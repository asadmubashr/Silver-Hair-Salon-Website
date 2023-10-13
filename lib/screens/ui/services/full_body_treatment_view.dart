import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:website_base/utilities/constants.dart';

import '../../shared/bottom_bar_contents_view.dart';
import '../../shared/home/qualities_widget.dart';
import '../../shared/services/photo_price_widget.dart';
import '../../shared/services/title_widget.dart';
import '../../shared/top_bar_contents_view.dart';

class FullBodyTreatmentView extends StatefulWidget {
  const FullBodyTreatmentView({super.key});

  @override
  State<FullBodyTreatmentView> createState() => _FullBodyTreatmentViewState();
}

class _FullBodyTreatmentViewState extends State<FullBodyTreatmentView> {
  final double _opacity = 1.0;
  bool isMenuOpened = false;
  final List _isSubMenuOpen = [
    false,
  ];

  double getMenuHeight() {
    double height = 300;
    if (_isSubMenuOpen[0]) {
      height += 300;
    }
    return height;
  }

  final title = 'BODY TREATMENT';
  final description =
      "Indulge in a world of relaxation and renewal with Silver Hair Salon's exquisite body treatments. Our expert therapists offer a range of luxurious experiences designed to pamper and rejuvenate your body from head to toe. From invigorating scrubs that leave your skin silky smooth to nourishing wraps that provide deep hydration, our body treatments are a blissful escape that leaves you feeling refreshed, revitalized, and beautifully balanced.";

  final String imageUrl = 'body/body1.jpg';
  final Map<String, String> prices = {
    'Neck, Back & Shoulder (in room) ': '120',
    'Foot Treatment ': '120',
    'Indian Head Treatment ': '160',
    'Neck, Back & Shoulder (in chair) ': '100',
    'Swedish Treatment ': '290',
  };

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  width: screenSize.width,
                  height: isMenuOpened ? getMenuHeight() : 100,
                  child: TopBaContentsView(
                    title: servicesMenu + fullBodyTreatmentMenu,
                    opacity: _opacity,
                    isMenuOpened: isMenuOpened,
                    toggleMenu: (value) {
                      setState(() {
                        isMenuOpened = value;
                      });
                    },
                    isSubMenuOpen: _isSubMenuOpen,
                    toggleSubMenu: (value, int) {
                      setState(() {
                        _isSubMenuOpen[int] = value;
                      });
                    },
                  ),
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Stack(
                      children: [
                        SizedBox(
                          height: 400,
                          width: screenSize.width,
                          child: Image.asset(
                            'body/body2.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          color: Colors.black.withOpacity(0.6),
                          width: screenSize.width,
                          height: 400,
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: screenSize.width < 1200
                            ? 24
                            : (24 + (screenSize.width - 1200) / 2),
                      ),
                      child: Column(
                        children: [
                          Text(
                            '--- ${fullBodyTreatmentMenu} ---',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 36,
                                fontWeight: FontWeight.w800),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                  onHover: (value) {},
                                  onTap: () {
                                    context.go('/');
                                  },
                                  child: Text(
                                    homeMenu,
                                    style: TextStyle(color: Colors.white),
                                  )),
                              Text(
                                '   /   ',
                                style: TextStyle(color: Colors.white),
                              ),
                              InkWell(
                                  onHover: (value) {},
                                  onTap: () {
                                    context.go('/$fullBodyTreatmentRoute');
                                  },
                                  child: Text(
                                    fullBodyTreatmentMenu,
                                    style: TextStyle(color: Colors.white),
                                  ))
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                TitleWidget(
                  title: title,
                  description: description,
                ),
                QualitiesWidget(),
                PhotoPriceWidget(
                  imageUrl: imageUrl,
                  prices: prices,
                ),
                BottomBarContentsView(),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(Icons.call),
        onPressed: () {},
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:website_base/utilities/constants.dart';

import '../../shared/bottom_bar_contents_view.dart';
import '../../shared/home/qualities_widget.dart';
import '../../shared/services/photo_price_widget.dart';
import '../../shared/services/title_widget.dart';
import '../../shared/top_bar_contents_view.dart';

class MassageView extends StatefulWidget {
  const MassageView({super.key});

  @override
  State<MassageView> createState() => _MassageViewState();
}

class _MassageViewState extends State<MassageView> {
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

  final title = 'MASSAGE';
  final description =
      "Indulge in pure relaxation and rejuvenation with Silver Hair Salon's massage services. Our skilled therapists offer a tranquil escape from the demands of life, delivering tailored massages that melt away tension and restore your well-being. Whether you seek a soothing Swedish massage or a targeted deep tissue treatment, our serene oasis promises to leave you refreshed, revitalized, and ready to face the world with renewed energy.";

  final String imageUrl = 'massage/massage1.jpg';
  final Map<String, String> prices = {
    'Foot Massage Reflexology (30 Mins) ': '75',
    'Head, Back & Shoulder (30 Mins) ': '75',
    'Hand (30 Mins) ': '45',
    'Swedish Massage (60 Mins) ': '120',
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
                    title: servicesMenu + massageMenu,
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
                            'massage/massage2.jpg',
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
                            '--- ${massageMenu} ---',
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
                                    context.go('/$massageRoute');
                                  },
                                  child: Text(
                                    massageMenu,
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

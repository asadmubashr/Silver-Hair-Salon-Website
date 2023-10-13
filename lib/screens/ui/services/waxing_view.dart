import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:website_base/utilities/constants.dart';

import '../../shared/bottom_bar_contents_view.dart';
import '../../shared/home/qualities_widget.dart';
import '../../shared/services/photo_price_widget.dart';
import '../../shared/services/title_widget.dart';
import '../../shared/top_bar_contents_view.dart';

class WaxingView extends StatefulWidget {
  const WaxingView({super.key});

  @override
  State<WaxingView> createState() => _WaxingViewState();
}

class _WaxingViewState extends State<WaxingView> {
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

  final title = 'WAXING';
  final description =
      "Experience the ultimate in smoothness and confidence with Silver Hair Salon's waxing services. Our expert estheticians provide gentle and effective hair removal solutions that leave your skin flawlessly radiant. Whether it's a silky leg, a well-defined brow, or a touch of elegance, our waxing treatments are designed to make you feel beautiful, comfortable, and ready to embrace any occasion.";

  final String imageUrl = 'waxing/waxing1.jpg';
  final Map<String, String> prices = {
    'Underarm Waxing ': '20',
    'Half Arm Waxing ': '45',
    'Full Arm Waxing ': '50',
    'Stomach Waxing ': '40',
    'Full Back Waxing ': '60',
    'Bikini Line ': '75',
    'Full Bikini ': '100',
    'Half Leg Waxing ': '50',
    'Full Leg Waxing ': '60',
    'Full Body Bleach ': '150',
    'Full Body Wax ': '250',
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
                    title: servicesMenu + waxingMenu,
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
                            'waxing/waxing2.jpg',
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
                            '--- ${waxingMenu} ---',
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
                                    context.go('/$waxingRoute');
                                  },
                                  child: Text(
                                    waxingMenu,
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

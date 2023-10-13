import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:website_base/utilities/constants.dart';

import '../../shared/bottom_bar_contents_view.dart';
import '../../shared/home/qualities_widget.dart';
import '../../shared/services/photo_price_widget.dart';
import '../../shared/services/title_widget.dart';
import '../../shared/top_bar_contents_view.dart';

class SkinView extends StatefulWidget {
  const SkinView({super.key});

  @override
  State<SkinView> createState() => _SkinViewState();
}

class _SkinViewState extends State<SkinView> {
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

  final title = 'SKIN';
  final description =
      "Rediscover your natural radiance with Silver Hair Salon's luxurious facial services. Our experienced estheticians offer personalized treatments that revitalize and nourish your skin, addressing your unique needs and concerns. From customized facials that leave you glowing to advanced techniques that promote skin rejuvenation, our goal is to enhance your beauty and confidence. Step into a realm of skincare excellence, where each visit is a step towards a more luminous and youthful complexion.";

  final String imageUrl = 'skin/skin1.jpg';
  final Map<String, String> prices = {
    'Eyebrows ': '14',
    'Upper Lip ': '10',
    'Full Face Threading/Waxing ': '45',
    'Side Threading/Waxing ': '30',
    'Facial (Classic) ': '80',
    'Facial (Whitening) ': '120',
    'Facial (Rejuvenating-Gold) ': '140',
    'Clean Up Bleach (Herbal) ': '70',
    'Face, Should & Neck ': '75',
    'Clean Up Bleach (Herbal) ': '70',
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
                    title: servicesMenu + skinMenu,
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
                            'skin/skin2.jpg',
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
                            '--- ${skinMenu} ---',
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
                                    context.go('/$skinRoute');
                                  },
                                  child: Text(
                                    skinMenu,
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

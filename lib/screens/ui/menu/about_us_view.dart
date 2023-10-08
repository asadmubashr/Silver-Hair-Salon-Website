import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:website_base/utilities/constants.dart';

import '../../shared/bottom_bar_contents_view.dart';
import '../../shared/home/qualities_widget.dart';
import '../../shared/top_bar_contents_view.dart';

class AboutUsView extends StatefulWidget {
  const AboutUsView({super.key});

  @override
  State<AboutUsView> createState() => _AboutUsViewState();
}

class _AboutUsViewState extends State<AboutUsView> {
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
                    title: aboutUsMenu,
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
                          height: 300,
                          width: screenSize.width,
                          child: Image.asset(
                            'aboutUs.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          color: Colors.black.withOpacity(0.6),
                          width: screenSize.width,
                          height: 300,
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
                            '--- About Us ---',
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
                                    context.go('/$aboutUsMenu');
                                  },
                                  child: Text(
                                    aboutUsMenu,
                                    style: TextStyle(color: Colors.white),
                                  ))
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                QualitiesWidget(),
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

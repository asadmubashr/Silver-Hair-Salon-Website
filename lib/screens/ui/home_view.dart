import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../utilities/constants.dart';
import '../shared/bottom_bar_contents_view.dart';
import '../shared/home/qualities_widget.dart';
import '../shared/top_bar_contents_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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
                    title: homeMenu,
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
                    SizedBox(
                      height: screenSize.height,
                      width: screenSize.width,
                      child: Image.asset(
                        'main.jpg',
                        fit: BoxFit.cover,
                      ),
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
                            'Be it hair, nails or skin - we have you covered',
                            style: TextStyle(color: Colors.white, fontSize: 36),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            'CELEBRATING 25 YEARS IN UAE',
                            style: TextStyle(color: Colors.white, fontSize: 72),
                            textAlign: TextAlign.center,
                          ),
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

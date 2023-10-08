import 'package:flutter/material.dart';

import '../shared/bottom_bar_contents_view.dart';
import '../shared/top_bar_contents_view.dart';

class CostView extends StatefulWidget {
  const CostView({super.key});

  @override
  State<CostView> createState() => _CostViewState();
}

class _CostViewState extends State<CostView> {
  final double _opacity = 1.0;
  bool isMenuOpened = false;
  final List _isSubMenuOpen = [
    false,
  ];

  double getMenuHeight() {
    double height = 375;
    if (_isSubMenuOpen[0]) {
      height += 160;
    }
    return height;
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
          child: TopBaContentsView(
            title: 'Cost',
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
          preferredSize:
              Size(screenSize.width, isMenuOpened ? getMenuHeight() : 120)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('Cost'),
            Container(
              child: SizedBox(
                height: screenSize.height * 0.70,
                width: screenSize.width,
                child: Image.asset(
                  'app1.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            BottomBarContentsView(),
          ],
        ),
      ),
    );
  }
}

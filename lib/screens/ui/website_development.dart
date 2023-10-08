import 'package:flutter/material.dart';

import '../shared/bottom_bar_contents_view.dart';
import '../shared/top_bar_contents_view.dart';

class WebsiteDevelopmentView extends StatefulWidget {
  const WebsiteDevelopmentView({super.key});

  @override
  State<WebsiteDevelopmentView> createState() => _WebsiteDevelopmentViewState();
}

class _WebsiteDevelopmentViewState extends State<WebsiteDevelopmentView> {
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
            title: 'Website Development',
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
            Text('Website Development'),
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

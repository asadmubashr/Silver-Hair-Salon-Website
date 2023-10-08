import 'package:flutter/material.dart';

import '../shared/bottom_bar_contents_view.dart';
import '../shared/top_bar_contents_view.dart';

class ErrorView extends StatefulWidget {
  String? type;
  ErrorView({super.key, required this.type});

  @override
  State<ErrorView> createState() => _ErrorViewState();
}

class _ErrorViewState extends State<ErrorView> {
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
            title: 'Error',
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
            Container(
              height: screenSize.height * 0.70,
              child: Center(child: Text('404 Page Not Found ${widget.type}')),
            ),
            BottomBarContentsView(),
          ],
        ),
      ),
    );
  }
}

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

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: PreferredSize(
          child: TopBaContentsView(
            opacity: _opacity,
          ),
          preferredSize: Size(screenSize.width, 70)),
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

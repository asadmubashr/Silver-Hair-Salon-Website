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

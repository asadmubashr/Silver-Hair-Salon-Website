import 'package:flutter/material.dart';

import '../shared/bottom_bar_contents_view.dart';
import '../shared/top_bar_contents_view.dart';

class AppDevelopmentView extends StatefulWidget {
  const AppDevelopmentView({super.key});

  @override
  State<AppDevelopmentView> createState() => _AppDevelopmentViewState();
}

class _AppDevelopmentViewState extends State<AppDevelopmentView> {
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
            Text('App Development'),
            Container(
              child: SizedBox(
                height: screenSize.height * 0.70,
                width: screenSize.width,
                child: Image.asset(
                  'app2.png',
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

import 'package:flutter/material.dart';
import 'package:website_base/utilities/constants.dart';

class TitleWidget extends StatelessWidget {
  final title;
  final description;
  const TitleWidget(
      {super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    double horizontalPadding =
        screenSize.width < 1200 ? 24 : (24 + (screenSize.width - 1200) / 2);
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding, vertical: screenSize.height * 0.05),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 48),
        decoration: BoxDecoration(border: Border.all(color: kPrimaryColor)),
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 32,
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              description,
              style: TextStyle(color: kPrimaryColor, height: 2, fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

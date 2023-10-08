import 'package:flutter/material.dart';
import 'package:website_base/models/quality_model.dart';
import 'package:website_base/utilities/constants.dart';
import 'package:website_base/widgets/cirrcle.dart';

class QualitiesWidget extends StatefulWidget {
  const QualitiesWidget({super.key});

  @override
  State<QualitiesWidget> createState() => _QualitiesWidgetState();
}

class _QualitiesWidgetState extends State<QualitiesWidget> {
  var qualities = [
    QualityModel(
        imageUrl: 'logo.png',
        name: 'BEST QUALITY',
        description:
            'At Silver Hair Salon, we pride ourselves on delivering the best quality services that exceed your expectations. Experience beauty and relaxation like never before.'),
    QualityModel(
        imageUrl: 'logo.png',
        name: 'INTEGRITY',
        description:
            'Integrity and dedication are at the heart of everything we do at Silver Hair Salon. Trust us completely to provide services that prioritize your beauty, well-being, and satisfaction.'),
    QualityModel(
        imageUrl: 'logo.png',
        name: 'STRATEGY',
        description:
            'Our approach is backed by strategic expertise, ensuring each service at Silver Hair Salon is a thoughtfully planned step towards your ultimate beauty goals.'),
  ];
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    double horizontalPadding =
        screenSize.width < 1200 ? 24 : (24 + (screenSize.width - 1200) / 2);
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 24),
      child: screenSize.width > 700
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for (int i = 0; i < qualities.length; i++) ...[
                  Container(
                    width: ((screenSize.width - (horizontalPadding * 2)) / 3.2),
                    height: screenSize.width > 1200 ? 250 : null,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color:
                              Colors.grey.withOpacity(0.1), // Grey shadow color
                          spreadRadius: 2, // Spread radius of the shadow
                          blurRadius: 5, // Blur radius of the shadow
                          offset: Offset(0, 3), // Offset of the shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleView(
                            child: Icon(
                              Icons.analytics,
                              color: kPrimaryColor,
                              size: 40,
                            ),
                            border: kPrimaryColor,
                            width: 75,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            qualities[i].name,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Text(
                            qualities[i].description,
                            style: TextStyle(
                              height: 1.5,
                            ),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ],
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for (int i = 0; i < qualities.length; i++) ...[
                  Container(
                    width: ((screenSize.width - (horizontalPadding * 2))),
                    height: screenSize.width > 1200 ? 250 : null,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color:
                              Colors.grey.withOpacity(0.1), // Grey shadow color
                          spreadRadius: 2, // Spread radius of the shadow
                          blurRadius: 5, // Blur radius of the shadow
                          offset: Offset(0, 3), // Offset of the shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleView(
                            child: Icon(
                              Icons.analytics,
                              color: kPrimaryColor,
                              size: 40,
                            ),
                            border: kPrimaryColor,
                            width: 75,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            qualities[i].name,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Text(
                            qualities[i].description,
                            style: TextStyle(
                              height: 1.5,
                            ),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                ],
              ],
            ),
    );
  }
}

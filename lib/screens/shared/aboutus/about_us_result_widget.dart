import 'package:flutter/material.dart';
import 'package:website_base/utilities/constants.dart';

import '../../../models/result_model.dart';

class AboutUsResultsWidget extends StatefulWidget {
  const AboutUsResultsWidget({super.key});

  @override
  State<AboutUsResultsWidget> createState() => _AboutUsResultsWidgetState();
}

class _AboutUsResultsWidgetState extends State<AboutUsResultsWidget> {
  var results = [
    ResultModel(number: '5000+', title: 'Happy Clients'),
    ResultModel(number: '8+', title: 'Expert Stylists'),
    ResultModel(number: '15+', title: 'Years Of Excellence'),
    ResultModel(number: '30+', title: 'Winning Awards'),
  ];

  double getHeightAccordingToSize(double width) {
    double result = 0;
    if (width <= 775) {
      return 520;
    } else if (width > 775 && width <= 1200) {
      return 150;
    } else if (width > 1200) {
      return 150;
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 48),
      child: Stack(
        children: [
          Container(
            color: kPrimaryColor,
            width: screenSize.width,
            height: getHeightAccordingToSize(screenSize.width),
          ),
          Container(
            color: Colors.transparent,
            height: getHeightAccordingToSize(screenSize.width),
            padding: EdgeInsets.symmetric(
                horizontal: (screenSize.width >= 816) ? 4 : 4, vertical: 24),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (screenSize.width <= 775) ...[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int i = 0; i < results.length; i++) ...[
                        ResultMobile(
                          resultModel: results[i],
                        ),
                        if (i != results.length - 1) ...[
                          SizedBox(
                            height: 24,
                          ),
                        ],
                      ]
                    ],
                  ),
                ],
                if (screenSize.width > 775 && screenSize.width <= 1200) ...[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int i = 0; i < results.length; i++) ...[
                        ResultTablet(
                          resultModel: results[i],
                        ),
                      ]
                    ],
                  ),
                ],
                if (screenSize.width > 1200) ...[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int i = 0; i < results.length; i++) ...[
                        ResultTablet(
                          resultModel: results[i],
                        ),
                      ]
                    ],
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ResultMobile extends StatefulWidget {
  ResultModel resultModel;
  ResultMobile({super.key, required this.resultModel});

  @override
  State<ResultMobile> createState() => _ResultMobileState();
}

class _ResultMobileState extends State<ResultMobile> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.white)),
      width: screenSize.width,
      padding: EdgeInsets.only(bottom: 4),
      margin: EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          Text(
            widget.resultModel.number,
            style: TextStyle(color: Colors.green, fontSize: 56),
          ),
          Text(
            widget.resultModel.title,
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ],
      ),
    );
  }
}

class ResultTablet extends StatefulWidget {
  ResultModel resultModel;
  ResultTablet({super.key, required this.resultModel});

  @override
  State<ResultTablet> createState() => _ResultTabletState();
}

class _ResultTabletState extends State<ResultTablet> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
      ),
      width: screenSize.width / 4.4,
      padding: EdgeInsets.only(bottom: 4),
      margin: EdgeInsets.symmetric(horizontal: 4),
      child: Column(
        children: [
          Text(
            widget.resultModel.number,
            style: TextStyle(color: Colors.green, fontSize: 56),
          ),
          Text(
            widget.resultModel.title,
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ],
      ),
    );
  }
}

class ResultWeb extends StatefulWidget {
  ResultModel resultModel;
  ResultWeb({super.key, required this.resultModel});

  @override
  State<ResultWeb> createState() => _ResultWebState();
}

class _ResultWebState extends State<ResultWeb> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
      ),
      width: 200,
      padding: EdgeInsets.only(bottom: 4),
      margin: EdgeInsets.symmetric(horizontal: 4),
      child: Column(
        children: [
          Text(
            widget.resultModel.number,
            style: TextStyle(color: Colors.white, fontSize: 56),
          ),
          Text(
            widget.resultModel.title,
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ],
      ),
    );
  }
}

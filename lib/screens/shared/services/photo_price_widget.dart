import 'package:flutter/material.dart';
import 'package:website_base/utilities/constants.dart';

class PhotoPriceWidget extends StatefulWidget {
  final String imageUrl;
  Map<String, String> prices;
  PhotoPriceWidget({super.key, required this.imageUrl, required this.prices});

  @override
  State<PhotoPriceWidget> createState() => _PhotoPriceWidgetState();
}

class _PhotoPriceWidgetState extends State<PhotoPriceWidget> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    double horizontalPadding =
        screenSize.width < 1200 ? 24 : (24 + (screenSize.width - 1200) / 2);
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding, vertical: screenSize.height * 0.05),
      child: screenSize.width > 1000
          ? Row(
              children: [
                Expanded(
                  child: Image.asset(
                    widget.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 24,
                ),
                Container(
                  width: (screenSize.width / 2) - (horizontalPadding),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.transparent)),
                  child: Column(
                    children: [
                      for (var entries in widget.prices.entries) ...[
                        Row(
                          children: [
                            Text(
                              entries.key,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18),
                            ),
                            Expanded(
                              child: Row(
                                children:
                                    List.generate(20, (index) => Text('')),
                              ),
                            ),
                            Text(
                              ' $currency ${entries.value}',
                              style: TextStyle(
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 32,
                        ),
                      ],
                    ],
                  ),
                ),
              ],
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.transparent)),
                  child: Image.asset(
                    widget.imageUrl,
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      for (var entries in widget.prices.entries) ...[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              entries.key,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18),
                            ),
                            for (int i = 0; i < 20; i++) ...[Text('.')],
                            Text(
                              ' $currency ${entries.value}',
                              style: TextStyle(
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 32,
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

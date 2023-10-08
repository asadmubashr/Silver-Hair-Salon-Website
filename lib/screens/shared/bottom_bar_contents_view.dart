import 'package:flutter/material.dart';
import 'package:website_base/screens/shared/fotter/silver_hair_widget.dart';
import 'package:website_base/utilities/constants.dart';

import 'fotter/contact_us_info_widget.dart';
import 'fotter/popular_services_widget.dart';
import 'fotter/quick_links_widget.dart';

class BottomBarContentsView extends StatefulWidget {
  const BottomBarContentsView({super.key});

  @override
  State<BottomBarContentsView> createState() => _BottomBarContentsViewState();
}

class _BottomBarContentsViewState extends State<BottomBarContentsView> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      color: kPrimaryColor,
      padding: EdgeInsets.only(
          left: screenSize.width < 1200
              ? 24
              : (24 + (screenSize.width - 1200) / 2),
          right: screenSize.width < 1200
              ? 24
              : (24 + (screenSize.width - 1200) / 2),
          top: screenSize.height * 0.05,
          bottom: 24),
      child: Column(
        children: [
          if (screenSize.width > 700) ...[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(child: SilverHairWidget()),
                Container(child: PopularServicesWidget()),
                Container(child: QuickLinksWidget()),
                Container(child: ContactUsInfoWidget()),
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Copyright © 2023 Silver Hair Salon UAE',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  'Powered by ULegendary Digital',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ],
          if (screenSize.width <= 700) ...[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(child: SilverHairWidget()),
                    SizedBox(
                      height: 16,
                    ),
                    Container(child: PopularServicesWidget()),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(child: QuickLinksWidget()),
                    SizedBox(
                      height: 16,
                    ),
                    Container(child: const ContactUsInfoWidget()),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
              ],
            ),
            Divider(),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Copyright © 2023 Silver Hair Salon UAE',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Powered by ULegendary Digital',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ]
        ],
      ),
    );
  }
}

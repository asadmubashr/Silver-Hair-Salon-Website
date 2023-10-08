import 'package:flutter/material.dart';
import 'package:website_base/utilities/constants.dart';

class PopularServicesWidget extends StatelessWidget {
  PopularServicesWidget({super.key});

  Map<String, String> quickLinks = {
    'Home': '/',
    'About Us': '/$aboutUsRoute',
    'Gallery': '/$galleryRoute',
    'Services': '/$servicesRoute',
    'Contact Us': '/$servicesRoute',
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Popular Services',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white),
        ),
        SizedBox(
          height: 24,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (var entry in quickLinks.entries) ...[
              Text(
                entry.key,
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 8,
              ),
            ]
          ],
        )
      ],
    );
  }
}

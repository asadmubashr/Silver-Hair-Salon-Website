import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:website_base/utilities/constants.dart';

class QuickLinksWidget extends StatelessWidget {
  QuickLinksWidget({super.key});

  Map<String, String> quickLinks = {
    'Nail': '/$nailRoute',
    'Hair': '/$hairRoute',
    'Skin': '/$skinRoute',
    'Full Body Treatment': '/$fullBodyTreatmentRoute',
    'Waxing': '/$waxingRoute',
    'Massage': '/$massageRoute',
    'Makeup': '/$makeupRoute',
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Quick Links',
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
              InkWell(
                onHover: (value) {},
                onTap: () {
                  context.go(entry.value);
                },
                child: Text(
                  entry.key,
                  style: TextStyle(color: Colors.white),
                ),
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

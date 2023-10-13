import 'package:flutter/material.dart';
import 'package:website_base/models/aboutus_services_model.dart';
import 'package:website_base/utilities/constants.dart';

class AboutUsServicesWidget extends StatelessWidget {
  AboutUsServicesWidget({super.key});

  List services = [
    AboutUsServiceModel(
        imageUrl: 'aboutus/right-care.png',
        title: 'RIGHT HAIR CARE',
        description:
            'Experience tailored hair care that suits your unique needs and style.'),
    AboutUsServiceModel(
        imageUrl: 'aboutus/hair-types.png',
        title: 'ALL HAIR TYPES',
        description:
            'We cater to all hair types, ensuring everyone leaves feeling confident.'),
    AboutUsServiceModel(
        imageUrl: 'aboutus/selective-products.png',
        title: 'SELECTIVE PRODUCTS',
        description:
            'Curated selection of premium products for an exquisite beauty experience.'),
  ];
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    double horizontalPadding =
        screenSize.width < 1200 ? 24 : (24 + (screenSize.width - 1200) / 2);
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 0; i < services.length; i++) ...[
            Container(
              width: (screenSize.width / 3) - (horizontalPadding),
              child: Column(
                children: [
                  Image.asset(
                    services[i].imageUrl,
                    width: 40,
                    height: 80,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    services[i].title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    services[i].description,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: kPrimaryColor, fontSize: 16),
                  ),
                ],
              ),
            ),
          ]
        ],
      ),
    );
  }
}

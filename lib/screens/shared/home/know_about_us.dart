import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:website_base/utilities/constants.dart';
import 'package:website_base/widgets/button.dart';

class KnowAboutUs extends StatelessWidget {
  const KnowAboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    double horizontalPadding =
        screenSize.width < 1200 ? 24 : (24 + (screenSize.width - 1200) / 2);
    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 24),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          screenSize.width < 1200
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'home/know_about_us1.png',
                          width:
                              (screenSize.width / 2) - (horizontalPadding * 2),
                          height: 350,
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          'home/know_about_us2.png',
                          width:
                              (screenSize.width / 2) - (horizontalPadding * 2),
                          height: 350,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Container(
                      width: (screenSize.width) - (horizontalPadding * 2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Know About Us',
                            style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: 32,
                                fontWeight: FontWeight.w900),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Text(
                            'At Silver Hair Salon, we believe in the transformative power of beauty. Our dedicated team of professionals is committed to enhancing your natural elegance through a range of exceptional services, from hair and nails to makeup and massages. With a passion for creativity and a commitment to excellence, we invite you to experience a world of luxury and rejuvenation, where every visit is a celebration of your unique beauty journey.',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w300),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          ButtonView(
                            name: 'Know More',
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                            onTap: () {
                              context.go('/$aboutUsRoute');
                            },
                            background: kPrimaryColor,
                            borderRadius: 8,
                            height: 40,
                            width: 120,
                          )
                        ],
                      ),
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'home/know_about_us1.png',
                      width: 300,
                      height: 350,
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'home/know_about_us2.png',
                      width: 300,
                      height: 350,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      width: (screenSize.width / 2) - (horizontalPadding * 2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Know About Us',
                            style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: 32,
                                fontWeight: FontWeight.w900),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Text(
                            'At Silver Hair Salon, we believe in the transformative power of beauty. Our dedicated team of professionals is committed to enhancing your natural elegance through a range of exceptional services, from hair and nails to makeup and massages. With a passion for creativity and a commitment to excellence, we invite you to experience a world of luxury and rejuvenation, where every visit is a celebration of your unique beauty journey.',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w300),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          ButtonView(
                            name: 'Know More',
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                            onTap: () {
                              context.go('/$aboutUsRoute');
                            },
                            background: kPrimaryColor,
                            borderRadius: 8,
                            height: 40,
                            width: 120,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}

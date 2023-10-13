import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:website_base/utilities/constants.dart';
import 'package:website_base/widgets/button.dart';

class AboutUsPhotoTitleWidget extends StatefulWidget {
  final String imageUrl;
  AboutUsPhotoTitleWidget({
    super.key,
    required this.imageUrl,
  });

  @override
  State<AboutUsPhotoTitleWidget> createState() =>
      _AboutUsPhotoTitleWidgetState();
}

class _AboutUsPhotoTitleWidgetState extends State<AboutUsPhotoTitleWidget> {
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  width: (screenSize.width / 2) - (horizontalPadding * 2),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.transparent)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Discover the World of',
                        style: TextStyle(
                            color: Colors.amber,
                            fontSize: 18,
                            fontFamily: 'Paradise'),
                      ),
                      Text(
                        'Silver Hair Salon',
                        style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 32,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Text(
                        "Indulge yourself at Silver Hair Salon, where beauty meets tranquility. Our dedicated team of professionals is committed to enhancing your natural beauty and providing an unforgettable escape. Whether it's a stunning hair transformation or impeccable nails, we offer a range of services that cater to your every desire.\n\nFrom smooth hair removal and captivating eyelashes to flawless makeup, rejuvenating massage, and invigorating facials, our tailored treatments are designed to create a sense of radiance and relaxation. Step into our oasis and discover a world where self-care is elevated to an art form. Experience the magic of Silver Hair Salon today.",
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      ButtonView(
                        name: 'View Services',
                        onTap: () {
                          context.go('/$galleryRoute');
                        },
                        width: 120,
                        height: 50,
                        background: kPrimaryColor,
                        textStyle: TextStyle(color: Colors.white),
                        borderRadius: 12,
                      ),
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
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.transparent)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Discover the World of',
                        style: TextStyle(
                            color: Colors.amber,
                            fontSize: 18,
                            fontFamily: 'Paradise'),
                      ),
                      Text(
                        'Silver Hair Salon',
                        style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 32,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Text(
                        "Indulge yourself at Silver Hair Salon, where beauty meets tranquility. Our dedicated team of professionals is committed to enhancing your natural beauty and providing an unforgettable escape. Whether it's a stunning hair transformation or impeccable nails, we offer a range of services that cater to your every desire.\n\nFrom smooth hair removal and captivating eyelashes to flawless makeup, rejuvenating massage, and invigorating facials, our tailored treatments are designed to create a sense of radiance and relaxation. Step into our oasis and discover a world where self-care is elevated to an art form. Experience the magic of Silver Hair Salon today.",
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      ButtonView(
                        name: 'View Services',
                        onTap: () {
                          context.go('/$galleryRoute');
                        },
                        width: 120,
                        height: 50,
                        background: kPrimaryColor,
                        textStyle: TextStyle(color: Colors.white),
                        borderRadius: 12,
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../../models/review_model.dart';
import '../../../utilities/constants.dart';

class ReviewsWidget extends StatefulWidget {
  const ReviewsWidget({Key? key});

  @override
  State<ReviewsWidget> createState() => _ReviewsWidgetState();
}

class _ReviewsWidgetState extends State<ReviewsWidget> {
  final List<ReviewModel> reviews = [
    ReviewModel(
      imageUrl: 'main.jpg',
      name: 'Emily Smith',
      stars: 5,
      review:
          'Silver Hair Salon is a hidden gem. I love the personalized service I receive, and the stylists are so talented!',
    ),
    ReviewModel(
      imageUrl: 'main.jpg',
      name: 'Sophia Davis',
      stars: 4,
      review:
          'I had a great experience at Silver Hair Salon. The staff is friendly, and my new haircut is perfect.',
    ),
    ReviewModel(
      imageUrl: 'main.jpg',
      name: 'Olivia Johnson',
      stars: 5,
      review:
          "I've been a loyal customer for years. Silver Hair Salon never disappoints, and I always leave with a smile.",
    ),
    ReviewModel(
      imageUrl: 'main.jpg',
      name: 'Emma Wilson',
      stars: 4,
      review:
          "The salon has a fantastic atmosphere, and the stylists pay attention to every detail. I'm thrilled with my new look.",
    ),
    ReviewModel(
      imageUrl: 'main.jpg',
      name: 'Ava Martin',
      stars: 5,
      review:
          'Silver Hair Salon is the best! The service is impeccable, and I feel like a new woman after every visit.',
    ),
  ];

  int _currentIndex = 0; // Track the current slide index

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    double horizontalPadding =
        screenSize.width < 1200 ? 24 : (24 + (screenSize.width - 1200) / 2);

    return Column(
      children: [
        SizedBox(
          height: 24,
        ),
        Text(
          'Why Choose Us',
          style: TextStyle(
              color: Colors.amber, fontSize: 22, fontFamily: 'Paradise'),
        ),
        Text(
          'Glowing Reviews',
          style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w300,
              fontFamily: 'FontspringLight'),
        ),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 24),
          child: CarouselSlider(
            items: reviews.map((review) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors
                            .purple, // You can set the background color or remove it
                        radius: 40,
                        backgroundImage:
                            AssetImage('main.jpg'), // Load your image here
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        review.name,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Text(
                        review.review,
                        style: TextStyle(height: 1.5),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
            options: CarouselOptions(
              height: 250 +
                  (screenSize.width < 800
                      ? (screenSize.width * 0.12)
                      : (screenSize.width * 0.02)),
              aspectRatio: 16 / 9,
              viewportFraction: screenSize.width < 800
                  ? 1
                  : 0.3, // Display two items at a time
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 4),

              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
        ),
        SizedBox(
          height: 24,
        ),
      ],
    );
  }
}

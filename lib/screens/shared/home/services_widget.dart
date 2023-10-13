import 'package:flutter/material.dart';

class ServicesWidget extends StatelessWidget {
  const ServicesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    double horizontalPadding =
        screenSize.width < 1200 ? 24 : (24 + (screenSize.width - 1200) / 2);
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 24),
      child: screenSize.width > 800
          ? Row(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'main.jpg',
                      width: screenSize.width / 5,
                      height: screenSize.height * 0.70,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      'Body',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'main.jpg',
                      width: screenSize.width / 5,
                      height: screenSize.height * 0.70,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      'Hair',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'main.jpg',
                      width: screenSize.width / 5,
                      height: screenSize.height * 0.70,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      'Skin',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'main.jpg',
                      width: screenSize.width / 5,
                      height: screenSize.height * 0.70,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      'Makeup',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'main.jpg',
                      width: screenSize.width / 5,
                      height: screenSize.height * 0.70,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      'Nails',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
              ],
            )
          : Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'main.jpg',
                      width: screenSize.width,
                      height: screenSize.height * 0.20,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      'Body',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'main.jpg',
                      width: screenSize.width,
                      height: screenSize.height * 0.20,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      'Hair',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'main.jpg',
                      width: screenSize.width,
                      height: screenSize.height * 0.20,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      'Skin',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'main.jpg',
                      width: screenSize.width,
                      height: screenSize.height * 0.20,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      'Makeup',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'main.jpg',
                      width: screenSize.width,
                      height: screenSize.height * 0.20,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      'Nails',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
              ],
            ),
    );
  }
}

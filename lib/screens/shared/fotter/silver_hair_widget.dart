import 'package:flutter/material.dart';

class SilverHairWidget extends StatelessWidget {
  const SilverHairWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Silver Hair Saloon',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white),
        ),
        SizedBox(
          height: 24,
        ),
        Image.asset(
          'logo.jpeg',
          width: 50,
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          'Open Hours:',
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          height: 8,
        ),
        const Text(
          'Dubai 10:00am to 9:00pm',
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}

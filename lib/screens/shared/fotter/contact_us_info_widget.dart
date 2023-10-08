import 'package:flutter/material.dart';
import 'package:website_base/utilities/constants.dart';

class ContactUsInfoWidget extends StatefulWidget {
  const ContactUsInfoWidget({super.key});

  @override
  State<ContactUsInfoWidget> createState() => _ContactUsInfoWidgetState();
}

class _ContactUsInfoWidgetState extends State<ContactUsInfoWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Contact Us',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white),
        ),
        SizedBox(
          height: 24,
        ),
        Text(
          phoneNumber,
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          emailAddress,
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          physicalAddress,
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }
}

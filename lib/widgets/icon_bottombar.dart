import 'package:flutter/material.dart';

import '../utilities/constants.dart';

class IconBottomBar extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool selected;
  final int notifications;
  final Function() onPressed;

  const IconBottomBar(
      {required this.text,
      required this.icon,
      required this.selected,
      required this.notifications,
      required this.onPressed,
      Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(
            onPressed: onPressed,
            icon: Icon(icon,
                size: 25, color: selected ? kPrimaryColor : Colors.grey),
          ),
          Text(text,
              style: TextStyle(
                  fontSize: 12,
                  height: .1,
                  color: selected ? kPrimaryColor : Colors.grey))
        ],
      ),
    );
  }
}

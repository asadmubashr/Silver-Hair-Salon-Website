import 'package:flutter/material.dart';

class BottomBarContentsView extends StatefulWidget {
  const BottomBarContentsView({super.key});

  @override
  State<BottomBarContentsView> createState() => _BottomBarContentsViewState();
}

class _BottomBarContentsViewState extends State<BottomBarContentsView> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      color: Colors.black,
      child: SizedBox(
          height: screenSize.height * 0.70,
          width: screenSize.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '© Copyright 2023 App Developer | All Rights Reserved',
                style: TextStyle(color: Colors.grey),
              )
            ],
          )),
    );
  }
}

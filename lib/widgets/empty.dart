import 'package:flutter/material.dart';

import '../../utilities/constants.dart';
import 'button.dart';

class EmptyView extends StatelessWidget {
  final String message;
  final String buttonMessage;
  final Function() onTap;

  const EmptyView(
      {super.key,
      required this.message,
      required this.buttonMessage,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            message,
            style: TextStyle(
                fontSize: 22,
                fontFamily: 'Conduit',
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 12,
          ),
          ButtonView(
            icon: Icon(
              Icons.refresh,
              color: Colors.white,
              size: 18,
            ),
            name: buttonMessage,
            onTap: onTap,
            height: 32,
            width: 120,
            borderRadius: 2,
            background: kPrimaryColor,
            textStyle: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

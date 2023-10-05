import 'dart:ui';

import 'package:flutter/material.dart';

class SimpleListView extends StatefulWidget {
  Function() onTap;
  IconData? iconData;
  String text;
  TextStyle? textStyle;
  Widget? last;
  double? verticalPadding;
  double? size;

  SimpleListView({
    super.key,
    required this.onTap,
    this.iconData,
    required this.text,
    this.textStyle,
    this.last,
    this.verticalPadding = 16,
    this.size = 14,
  });

  @override
  State<SimpleListView> createState() => _SimpleListViewState();
}

class _SimpleListViewState extends State<SimpleListView> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: widget.onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: widget.verticalPadding!),
        child: Row(
          key: ValueKey(widget.text),
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                if (widget.iconData != null) ...[
                  Icon(
                    widget.iconData,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                ],
                Text(
                  widget.text,
                  style: (widget.textStyle != null)
                      ? widget.textStyle
                      : TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'OpenSans',
                          fontSize: widget.size),
                )
              ],
            ),
            widget.last ?? Container(),
          ],
        ),
      ),
    );
  }
}

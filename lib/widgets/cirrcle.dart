import 'package:flutter/material.dart';

class CircleView extends StatefulWidget {
  double? width;
  Color? background;
  Color? border;
  Widget? child;
  CircleView(
      {super.key,
      this.width = 12,
      this.background = Colors.transparent,
      this.border = Colors.transparent,
      this.child});

  @override
  State<CircleView> createState() => _CircleViewState();
}

class _CircleViewState extends State<CircleView> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: widget.width,
        height: widget.width,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: widget.background,
            border: Border.all(color: widget.border!)),
        alignment: Alignment.center,
        child: widget.child);
  }
}

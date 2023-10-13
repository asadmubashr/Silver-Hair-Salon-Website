import 'package:flutter/material.dart';

import '../utilities/constants.dart';

class ButtonView extends StatefulWidget {
  String name;
  Function() onTap;
  double? height;
  double? width;
  double? borderRadius;
  Color? border;
  Color? background;
  TextStyle? textStyle;
  Widget? icon;

  ButtonView(
      {super.key,
      this.icon,
      required this.name,
      required this.onTap,
      this.height = 25,
      this.width,
      this.borderRadius = 0,
      this.border = Colors.transparent,
      this.background = Colors.transparent,
      this.textStyle = const TextStyle(color: Colors.black)});

  @override
  State<ButtonView> createState() => _ButtonViewState();
}

class _ButtonViewState extends State<ButtonView> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        if (mounted) {
          setState(() {
            value ? isHovering = true : isHovering = false;
          });
        }
      },
      onTap: widget.onTap,
      child: Container(
        height: widget.height,
        width: widget.width,
        alignment: Alignment.center,
        padding: EdgeInsets.all(0),
        decoration: BoxDecoration(
            border:
                Border.all(color: isHovering ? Colors.amber : widget.border!),
            borderRadius: BorderRadius.circular(widget.borderRadius!),
            color: isHovering ? Colors.transparent : widget.background),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            widget.icon ?? Container(),
            (widget.icon != null)
                ? SizedBox(
                    width: 4,
                  )
                : Container(),
            Text(
              widget.name,
              style: widget.textStyle!.merge(TextStyle(
                  color: isHovering ? Colors.amber : widget.textStyle?.color)),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldView extends StatefulWidget {
  TextEditingController textEditingController;
  TextInputType? textInputType;
  List<TextInputFormatter>? textInputFormatters;
  String labelText;
  TextStyle? labelStyle;
  String hintText;
  TextStyle? hintStyle;
  int? maxLines;
  bool? submitted;

  TextFieldView(
      {super.key,
      required this.textEditingController,
      this.textInputType,
      this.textInputFormatters,
      required this.labelText,
      this.labelStyle,
      required this.hintText,
      this.hintStyle,
      this.maxLines,
      this.submitted});

  @override
  State<TextFieldView> createState() => _TextFieldViewState();
}

class _TextFieldViewState extends State<TextFieldView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: TextFormField(
          style: const TextStyle(color: Colors.black),
          enabled: true,
          minLines: 1,
          maxLines: widget.maxLines ?? 4,
          keyboardType: ((widget.textInputType == null)
              ? TextInputType.text
              : widget.textInputType),
          inputFormatters: widget.textInputFormatters,
          controller: widget.textEditingController,
          onChanged: (value) {
            setState(() {});
          },
          validator: (value) {
            if (value!.isEmpty) {
              return widget.labelText
                      .substring(0, widget.labelText.length - 1) +
                  ' field cannot be empty';
            }
            return null;
          },
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.red,
              ),
            ),
            hintText: widget.hintText,
            labelStyle:
                ((widget.labelStyle == null) ? null : widget.labelStyle),
            labelText: widget.labelText,
            hintStyle: ((widget.hintStyle == null) ? null : widget.hintStyle),
            fillColor: widget.textEditingController.text.isEmpty
                ? Colors.transparent
                : Colors.transparent,
            filled: true,
          )),
    );
  }
}

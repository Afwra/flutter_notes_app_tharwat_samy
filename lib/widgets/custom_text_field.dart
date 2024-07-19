import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText, this.maxLines = 1});

  final String hintText;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: kPrimaryColor),
          border: getInputBorder(),
          enabledBorder: getInputBorder(),
          focusedBorder: getInputBorder(borderColor: kPrimaryColor)),
    );
  }

  OutlineInputBorder getInputBorder({Color borderColor = Colors.white}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(
        color: borderColor,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class FieldCartWidget extends StatelessWidget {
  const FieldCartWidget({
    super.key,
    required this.controller,
    required this.textLabel,
    required this.textHinText,
  });
  final TextEditingController controller;
  final String textHinText;
  final String textLabel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: textHinText,
          label: Text(
            textLabel,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          fillColor: Colors.grey,
          filled: false,
          border: InputBorder.none,
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}

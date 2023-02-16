// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ButtonCartWidget extends StatelessWidget {
  ButtonCartWidget({
    Key? key,
    required this.border,
    required this.background,
    this.iconColor,
    required this.onTap,
    required this.text,
    required this.colorText,
    this.iconL,
    this.iconR,
  }) : super(key: key);

  final Color border;
  final Color background;
  final Color? iconColor;
  final VoidCallback onTap;
  final String text;
  final Color colorText;
  final IconData? iconL;
  final IconData? iconR;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: border,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconL,
              color: iconColor,
            ),
            Text(
              text,
              style: TextStyle(
                color: colorText,
                fontSize: 16,
              ),
            ),
            Icon(
              iconR,
              color: iconColor,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ButtonProductWidget extends StatelessWidget {
  const ButtonProductWidget({
    super.key,
    required this.textCenter,
    required this.colorBackgrounLeft,
    required this.colorBackgrounRinght,
    required this.iconRight,
    required this.textCenter2,
    required this.textLeft,
  });
  final Color colorBackgrounLeft;
  final String textLeft;
  final String textCenter;
  final String textCenter2;
  final IconData iconRight;
  final Color colorBackgrounRinght;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            child: Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                color: colorBackgrounLeft,
                borderRadius: BorderRadius.circular(
                  60,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    bottom: -2.5,
                    right: 3,
                    child: Text(
                      textLeft,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Text(
                textCenter,
              ),
              Text(
                textCenter2,
              )
            ],
          ),
          GestureDetector(
            child: Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                color: colorBackgrounRinght,
                borderRadius: BorderRadius.circular(
                  60,
                ),
              ),
              child: Icon(
                iconRight,
                size: 8,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

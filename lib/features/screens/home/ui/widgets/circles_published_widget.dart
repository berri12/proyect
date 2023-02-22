import 'package:flutter/material.dart';

class CirclePublishedWidget extends StatelessWidget {
  const CirclePublishedWidget({
    super.key,
    required this.imageUrl,
    required this.backgroundColor,
    required this.title,
  });
  final String imageUrl;
  final Color backgroundColor;
  final String title;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: backgroundColor,
      maxRadius: 50,
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
          Image.network(
            imageUrl,
            height: 50,
            width: 50,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class TileSearchWidget extends StatelessWidget {
  const TileSearchWidget({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(
        Icons.history,
      ),
      title: Text(text),
    );
  }
}

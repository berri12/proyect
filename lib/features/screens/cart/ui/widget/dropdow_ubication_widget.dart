import 'package:flutter/material.dart';

class DropdowUbicationWidget extends StatefulWidget {
  const DropdowUbicationWidget({
    super.key,
    required this.text,
  });
  final String text;

  @override
  State<DropdowUbicationWidget> createState() => _DropdowUbicationWidgetState();
}

class _DropdowUbicationWidgetState extends State<DropdowUbicationWidget> {
  String dropdownValue = 'Dep';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButton<String>(
          value: dropdownValue,
          items: <String>[
            widget.text,
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
        ),
        Text(
          'Seleccione: $dropdownValue',
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}

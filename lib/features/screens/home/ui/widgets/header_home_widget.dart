import 'package:flutter/material.dart';

class HeaderHomeWidget extends StatefulWidget {
  HeaderHomeWidget({super.key});

  @override
  State<HeaderHomeWidget> createState() => _HeaderHomeWidgetState();
}

class _HeaderHomeWidgetState extends State<HeaderHomeWidget> {
  final List<String> header = <String>[
    'Destacados',
    'Tecnologia',
    'Destacados de la semana',
    'Beneficios bancos',
    'Categorias'
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: header.length,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 5,
              vertical: 15,
            ),
            child: Text(
              header[index],
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey.shade800,
              ),
            ),
          );
        },
      ),
    );
  }
}

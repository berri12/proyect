import 'package:flutter/material.dart';

class ButtonForDayWidget extends StatelessWidget {
  const ButtonForDayWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: const EdgeInsets.all(4),
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 10,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.blue,
          ),
        ),
        child: Row(
          children: [
            const Icon(
              Icons.access_time,
              size: 50,
              color: Colors.blueAccent,
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('¿Lo quieres para hoy?'),
                Text('Selecciona entrega hoy y recibelo de 9am a 9pm')
              ],
            )
          ],
        ),
      ),
    );
  }
}

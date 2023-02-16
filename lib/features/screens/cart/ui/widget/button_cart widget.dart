import 'package:flutter/material.dart';

class ButtonCartWidget extends StatelessWidget {
  const ButtonCartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: Colors.green,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.shopping_cart_outlined,
            color: Colors.green,
          ),
          Text(
            'Guardar para despues',
            style: TextStyle(color: Colors.green.shade500, fontSize: 16),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'button_cart widget.dart';

class ButtonTotalWidget extends StatefulWidget {
  const ButtonTotalWidget({super.key});

  @override
  State<ButtonTotalWidget> createState() => _ButtonTotalWidgetState();
}

class _ButtonTotalWidgetState extends State<ButtonTotalWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 15,
      ),
      height: 110,
      decoration: BoxDecoration(
        color: Colors.green.shade500,
      ),
      child: Column(
        children: [
          Row(
            children: const [
              Text(
                'Total',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Icon(
                Icons.arrow_drop_up_outlined,
                color: Colors.white,
                size: 25,
              ),
              Expanded(child: SizedBox()),
              Text(
                '\$ 829.900',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          const Divider(
            color: Colors.black,
          ),
          ButtonCartWidget(
            border: Colors.white,
            background: Colors.white,
            onTap: () {},
            text: 'Continuar compra',
            colorText: Colors.green,
          ),
        ],
      ),
    );
  }
}

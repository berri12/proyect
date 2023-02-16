import 'package:flutter/material.dart';

import 'product_cart_widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [ProductCartwidget()],
      ),
    );
  }
}

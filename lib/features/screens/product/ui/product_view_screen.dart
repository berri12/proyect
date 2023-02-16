import 'package:flutter/material.dart';
import 'package:proyect/features/screens/product/domain/product_entity.dart';
import 'package:proyect/features/screens/product/ui/widgets/product_view_widget.dart';

class ProductViewScreen extends StatelessWidget {
  const ProductViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final product = ProductEntity(
        id: 1,
        image: '',
        name: '',
        price: '',
        priceDiscount: '',
        description: '',
        stock: 1);
    //  final product = ModalRoute.of(context)?.settings.arguments as ProductEntity;

    return ProductViewWidget(product: product);
  }
}

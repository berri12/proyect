import 'package:flutter/material.dart';
import 'package:proyect/features/screens/product/domain/entities/product_entity.dart';
import '../../../widgets/product_card_widget.dart';

class ProductGridWidget extends StatelessWidget {
  const ProductGridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<ProductEntity>? products = <ProductEntity>[
      ProductEntity(
        id: 1,
        image:
            'https://repatin.com/72-large_default/combo-patin-onix-ultralight.jpg',
        name: 'cel',
        price: '100000',
        priceDiscount: '900000',
        description: 'sdcfgbhujm',
        stock: 4,
      ),
      ProductEntity(
        id: 2,
        image:
            'https://repatin.com/72-large_default/combo-patin-onix-ultralight.jpg',
        name: 'comp',
        price: '1800000',
        priceDiscount: '1600000',
        description: 'nukmllmlkl',
        stock: 3,
      )
    ];
    return GridView.count(
      physics: const ScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 2,
      childAspectRatio: 1 / 1.7,
      children: [
        for (ProductEntity product in products)
          ProductCardWidget(
            product: product,
          ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:proyect/features/screens/product/domain/entities/product_entity.dart';
import '../../../widgets/product_card_widget.dart';

class ProductGridWidget extends StatefulWidget {
  const ProductGridWidget({super.key});

  @override
  State<ProductGridWidget> createState() => _ProductGridWidgetState();
}

class _ProductGridWidgetState extends State<ProductGridWidget> {
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
      ),
    ];

    return SizedBox(
      height: 550,
      child: GridView.count(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        crossAxisCount: 2,
        childAspectRatio: 1 / .8,
        children: [
          for (ProductEntity product in products)
            ProductCardWidget(
              product: product,
            ),
        ],
      ),
    );
  }
}

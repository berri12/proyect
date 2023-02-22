import 'package:flutter/material.dart';
import 'package:proyect/features/screens/home/ui/widgets/circles_published_widget.dart';
import 'package:proyect/features/screens/home/ui/widgets/header_home_widget.dart';
import 'package:proyect/features/screens/home/ui/widgets/carrousel_widget.dart';
import 'package:proyect/features/screens/home/ui/widgets/product_grid_widget.dart';
import 'package:proyect/features/screens/product/domain/entities/product_entity.dart';
import 'package:proyect/features/screens/widgets/product_card_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final product = ProductEntity(
    id: 1,
    image: '',
    name: 'cel',
    price: '10000000',
    priceDiscount: '800000',
    description: 'fjnskndkcn',
    stock: 5,
  );
  String search = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(10, 60),
        child: _appBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderHomeWidget(),
            CarrouselWidget(
              height: 220,
              viewportFraction: 1,
            ),
            const SizedBox(
              height: 10,
            ),
            CarrouselWidget(
              height: 180,
              viewportFraction: .8,
            ),
            const SizedBox(
              height: 20,
            ),
            CarrouselWidget(
              height: 150,
              viewportFraction: .8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                children: [
                  CirclePublishedWidget(
                    imageUrl:
                        'https://repatin.com/72-large_default/combo-patin-onix-ultralight.jpg',
                    backgroundColor: Colors.deepPurple.shade400.withOpacity(.2),
                    title: 'patines',
                  ),
                  Expanded(
                    child: CirclePublishedWidget(
                      imageUrl:
                          'https://whatsmotors.com.ar/wp-content/uploads/2021/05/Dise%C3%B1o-sin-t%C3%ADtulo-5-3.png',
                      backgroundColor:
                          Colors.deepPurple.shade400.withOpacity(.2),
                      title: 'monopatin',
                    ),
                  ),
                  CirclePublishedWidget(
                    imageUrl:
                        'https://hardzone.es/app/uploads-hardzone.es/2019/05/CORSAIR-VENGEANCE-5180-Gaming-PC.jpg',
                    backgroundColor: Colors.deepPurple.shade400.withOpacity(.2),
                    title: 'gammers',
                  )
                ],
              ),
            ),
            ProductGridWidget()
          ],
        ),
      ),
    );
  }

  Widget _appBar() {
    return AppBar(
      backgroundColor: Colors.orange.shade600,
      title: TextFormField(
        onChanged: (value) {
          search = value;
          setState(() {});
        },
        decoration: const InputDecoration(
          hintText: 'Buscar en Proyect infiny',
        ),
      ),
      actions: const [
        Icon(
          Icons.shopping_cart_outlined,
          size: 35,
        )
      ],
    );
  }
}

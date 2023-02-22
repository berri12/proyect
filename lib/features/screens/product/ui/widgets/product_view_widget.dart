import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:proyect/features/screens/product/domain/entities/product_entity.dart';

import 'package:proyect/features/screens/product/ui/widgets/bottom_navigation_bar_widget.dart';
import 'package:proyect/features/screens/product/ui/widgets/button_product_widget.dart';
import 'package:proyect/features/screens/product/ui/widgets/characteristics_product_Widget.dart';
import 'package:proyect/features/screens/product/ui/widgets/info_order_widget.dart';

class ProductViewWidget extends StatelessWidget {
  const ProductViewWidget({super.key, required this.product});
  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor:
              const Color.fromARGB(255, 137, 128, 128).withOpacity(.2),
          elevation: 0,
          leading: const Icon(
            Icons.close,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  height: 300.0,
                  aspectRatio: 1 / 1,
                  viewportFraction: 1,
                ),
                items: [1, 2, 3, 4, 5].map(
                  (i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              'text $i',
                              style: const TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ).toList(),
              ),
              Container(
                color: Colors.grey.shade200,
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 18,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey.shade500,
                            ),
                          ),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Image.network(
                                    'https://play-lh.googleusercontent.com/_Ho7RM3TSLO6mf8N0afEnEZkFkv2qEoWL-Hqi1evN06yV-8USI7srUQ-Iz3RuFQeSvo=w240-h480-rw',
                                    height: 50,
                                    width: 50,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 18,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.check_circle,
                                        color: Colors.green,
                                      ),
                                      Text(
                                        'Voz',
                                        style: TextStyle(
                                          color: Colors.green,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.check_circle,
                                        color: Colors.green,
                                      ),
                                      Text(
                                        'internet',
                                        style: TextStyle(
                                          color: Colors.green,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              const SizedBox(
                                width: 18,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.check_circle,
                                        color: Colors.green,
                                      ),
                                      Text(
                                        'Voz',
                                        style: TextStyle(
                                          color: Colors.green,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.check_circle,
                                        color: Colors.green,
                                      ),
                                      Text(
                                        'internet',
                                        style: TextStyle(
                                          color: Colors.green,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              const SizedBox(
                                width: 18,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.check_circle,
                                        color: Colors.green,
                                      ),
                                      Text(
                                        'Voz',
                                        style: TextStyle(
                                          color: Colors.green,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.check_circle,
                                        color: Colors.green,
                                      ),
                                      Text(
                                        'internet',
                                        style: TextStyle(
                                          color: Colors.green,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              const SizedBox(
                                width: 18,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: const [
                        Text(
                          'ENVÍO',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'EXPRESS',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            backgroundColor: Colors.deepPurpleAccent,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: const [
                        Text(
                          'Xiaomi',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '/',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Celular xiaomi redmi note 11',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      '4GB-128GB',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: const [
                        Text(
                          '\$ 1299900',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '-38%',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                    Text(
                      '\$ 799900',
                      style: TextStyle(
                        color: Colors.grey.shade700,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      children: [
                        const Text(
                          '\$ 759900',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Image.network(
                          'https://www.seekpng.com/png/full/148-1483954_flecha-roja-derecha-mi-tn-.png',
                          height: 25,
                          width: 25,
                        ),
                        Image.network(
                          'https://s3.amazonaws.com/marketplace.comparaonline.com/marketplace/credit-card/cmr-falabella/CMR_CONTACTLESS.png',
                          height: 25,
                          width: 25,
                        ),
                      ],
                    ),
                    const Text(
                      'Acumula 759 CMR puntos',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ButtonProductWidget(
                      colorBackgrounLeft: Colors.grey.shade300,
                      colorBackgrounRinght: Colors.grey.shade300,
                      textCenter: '1',
                      textCenter2: '(174 unidades disponibles)',
                      iconRight: Icons.add,
                      textLeft: '-',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const ButtonProductWidget(
                      textCenter: 'textCenter',
                      colorBackgrounLeft: Colors.white,
                      colorBackgrounRinght: Colors.white,
                      iconRight: Icons.keyboard_arrow_down_sharp,
                      textCenter2: '',
                      textLeft: '',
                    )
                  ],
                ),
              ),
              const InfoOrderWidget(),
              Divider(
                height: 2,
                indent: 1,
                endIndent: 10,
                color: Colors.grey.shade600,
                thickness: 1,
              ),
              const CharacteristicsProductWidget()
            ],
          ),
        ),
        bottomNavigationBar: const BottomNavigationBarWidget());
  }
}

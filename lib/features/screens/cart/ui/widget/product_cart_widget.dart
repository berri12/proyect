import 'package:flutter/material.dart';
import 'package:proyect/features/screens/cart/ui/widget/button_cart%20widget.dart';
import 'package:proyect/features/screens/cart/ui/widget/button_counter_product_cart_widget.dart';

class ProductCartwidget extends StatelessWidget {
  const ProductCartwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 10,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              10,
            ),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  const Text(
                    'Celular xiaomi redmi note 11 4GB-128GB',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.close,
                    color: Colors.grey.shade600,
                  )
                ],
              ),
              const Divider(
                color: Colors.black,
                height: 2,
                indent: 1,
                endIndent: 10,
                thickness: 2,
              ),
              Row(
                children: [
                  Image.network(
                    'https://tecnologiafenix.com/assets/uploads/780d3a40eeb3733d5b0b07329870d735.jpg',
                    height: 100,
                    width: 80,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('opcion celular xiaomi redmi note 11 4-128GB'),
                      const Text('Dual sim gris'),
                      const Text('Cantidad: 1'),
                      const Text('Precio unitario'),
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
                            '-39%',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                      Text(
                        '\$ 789900',
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
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: ButtonCartWidget(
                      iconL: Icons.shopping_cart_outlined,
                      colorText: Colors.green,
                      background: Colors.white,
                      border: Colors.green,
                      text: 'Guardar para despues',
                      iconColor: Colors.green,
                      onTap: () {},
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  const ButtonCounterProductCartWidget(),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:proyect/features/screens/cart/ui/widget/button_cart%20widget.dart';
import 'package:proyect/features/screens/cart/ui/widget/dropdow_ubication_widget.dart';

import 'widget/button_for_day_widget.dart';
import 'widget/field_cart_widget.dart';
import 'widget/product_cart_widget.dart';

class CartScreen extends StatefulWidget {
  CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
  final TextEditingController controller = TextEditingController();
  final controllerUbication = TextEditingController(text: 'ubication');
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carrito'),
        leading: GestureDetector(
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.orange.shade700,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          left: 10,
          right: 10,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  const Icon(Icons.fire_truck),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Productos nacionales',
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const ProductCartwidget(),
              const Divider(
                thickness: 10,
              ),
              const ButtonForDayWidget(),
              const Divider(
                thickness: 10,
              ),
              Row(
                children: [
                  Image.network(
                    'https://cdn-icons-png.flaticon.com/512/3711/3711103.png',
                    height: 100,
                    width: 80,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  FieldCartWidget(
                    controller: widget.controller,
                    textHinText: 'Cupón',
                    textLabel: 'Cupón',
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  ButtonCartWidget(
                    colorText: Colors.white,
                    border: Colors.white,
                    background: Colors.green,
                    onTap: () {},
                    text: 'Aplicar',
                  )
                ],
              ),
              const Divider(
                thickness: 10,
              ),
              Row(
                children: [
                  Image.network(
                    'https://cdn-icons-png.flaticon.com/512/875/875502.png',
                    height: 100,
                    width: 80,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      const DropdowUbicationWidget(
                        text: 'Dep',
                      ),
                      FieldCartWidget(
                        controller: widget.controller,
                        textLabel: 'Municipio',
                        textHinText: 'Seleccione',
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  ButtonCartWidget(
                    colorText: Colors.white,
                    border: Colors.white,
                    background: Colors.green,
                    onTap: () {},
                    text: 'Aplicar',
                  ),
                ],
              ),
              const Divider(
                thickness: 10,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 10,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 2.0,
                      spreadRadius: 0.0,
                      offset: Offset(2.0, 2.0),
                    )
                  ],
                ),
                child: Row(
                  children: [
                    Image.network(
                      'https://cdn-icons-png.flaticon.com/512/8020/8020830.png',
                      height: 80,
                      width: 80,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: const [
                        Text(
                          'Solicita tu tarjeta de credito',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.green,
                          ),
                        ),
                        Text(
                          'CMR banco falabella aquí y',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.green,
                          ),
                        ),
                        Text(
                          'disfruta un mundo de beneficios',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.green,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10,
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 30,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                ),
                child: Row(
                  children: [
                    Image.network(
                      'https://cdn-icons-png.flaticon.com/512/5806/5806964.png',
                      height: 80,
                      width: 80,
                    ),
                    Column(
                      children: [
                        Text(
                          'Transacciones confiables y seguras.',
                          style: TextStyle(
                            color: Colors.grey.shade800,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Devoluciones fáciles y sin vueltas',
                          style: TextStyle(
                            color: Colors.grey.shade800,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

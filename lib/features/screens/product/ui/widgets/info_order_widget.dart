import 'package:flutter/material.dart';

class InfoOrderWidget extends StatelessWidget {
  const InfoOrderWidget({super.key});
  final SizedBox space = const SizedBox(
    width: 40,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 20,
      ),
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Icon(
                Icons.fire_truck_outlined,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'Recibelo Hoy',
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.w800,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          Row(
            children: [
              space,
              const Text(
                'Pidelo antes de las 12:00pm',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          Row(
            children: [
              space,
              const Text(
                'y recibelo gratis en usaquen',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          Row(
            children: [
              space,
              const Text(
                'o recibelo gratis mañana',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          Row(
            children: const [
              Icon(
                Icons.store_mall_directory_outlined,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'Recogelo gratis en tienda',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

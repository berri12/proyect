import 'package:flutter/material.dart';

class CharacteristicsProductWidget extends StatelessWidget {
  const CharacteristicsProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 20,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Caracteristicas destacadas',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontSize: 17,
            ),
          ),
          Row(
            children: [
              Icon(
                Icons.circle_rounded,
                size: 6,
                color: Colors.grey.shade600,
              ),
              Expanded(
                child: Text(
                  'Producto exento y/o excluido de iva en virtud del estatuto tributario',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.circle_rounded,
                size: 6,
                color: Colors.grey.shade600,
              ),
              Text(
                'Cargador Tipo europeo (version global)',
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              )
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.circle_rounded,
                size: 6,
                color: Colors.grey.shade600,
              ),
              Expanded(
                child: Text(
                  'Pantalla: Amoled 6,43 pulgadas, full HD+90 Hz, Respuesta tactil 180 Hz',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.circle_rounded,
                size: 6,
                color: Colors.grey.shade600,
              ),
              Text(
                'Dimensiones y peso: 159,87 x 73,87 x 8,09 mm',
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              )
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.circle_rounded,
                size: 6,
                color: Colors.grey.shade600,
              ),
              Text(
                'Procesador: Snapdragon 680.',
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

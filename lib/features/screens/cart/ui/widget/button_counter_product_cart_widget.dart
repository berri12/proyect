import 'package:flutter/material.dart';

class ButtonCounterProductCartWidget extends StatelessWidget {
  const ButtonCounterProductCartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: Colors.grey.shade800,
        ),
      ),
      child: Row(
        children: [
          GestureDetector(
            child: Container(
              height: 20,
              width: 20,
              color: Colors.transparent,
              child: Stack(
                children: const [
                  Positioned(
                    bottom: -3,
                    right: 6,
                    child: Text(
                      '-',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 7,
          ),
          const Text(
            '1',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            width: 7,
          ),
          GestureDetector(
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class QuantityControl extends StatelessWidget {
  final int quantity;

  const QuantityControl({super.key, required this.quantity});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(icon: const Icon(Icons.remove), onPressed: () {}),
        Text(quantity.toString().padLeft(2, '0'),
            style: const TextStyle(fontSize: 18)),
        IconButton(icon: const Icon(Icons.add), onPressed: () {}),
      ],
    );
  }
}

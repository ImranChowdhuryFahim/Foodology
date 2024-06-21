import 'package:flutter/material.dart';

class DeliveryAddress extends StatelessWidget {
  const DeliveryAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Delivery Address',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
        Image.asset('assets/images/map.png', fit: BoxFit.cover),
        TextButton(onPressed: () {}, child: const Text('Change address')),
      ],
    );
  }
}

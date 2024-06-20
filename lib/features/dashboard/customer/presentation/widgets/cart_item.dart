import 'package:flutter/material.dart';
import 'package:foodology/features/dashboard/customer/presentation/widgets/quantity_control.dart';

class CartItemData {
  final String imageUrl;
  final String name;
  final double price;
  final int quantity;

  CartItemData(
      {required this.imageUrl,
      required this.name,
      required this.price,
      required this.quantity});
}

class CartItem extends StatelessWidget {
  final CartItemData item;

  const CartItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.asset(item.imageUrl,
                width: 80, height: 80, fit: BoxFit.cover),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item.name,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold)),
                  Text('Tk ${item.price}',
                      style: const TextStyle(fontSize: 16)),
                ],
              ),
            ),
            QuantityControl(quantity: item.quantity),
          ],
        ),
      ),
    );
  }
}

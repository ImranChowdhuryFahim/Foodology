import 'package:flutter/material.dart';

class MealHeader extends StatelessWidget {
  final String imageUrl;
  final String name;
  final double rating;
  final int reviews;
  final int price;
  final String deliveryTime;

  const MealHeader({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.rating,
    required this.reviews,
    required this.price,
    required this.deliveryTime,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(child: Image.asset(imageUrl)),
        const SizedBox(height: 8),
        Center(
          child: Text(name,
              style:
                  const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        ),
        Row(
          children: [
            const Icon(Icons.star, color: Colors.amber, size: 20),
            Text('$rating ($reviews reviews)'),
            const Spacer(),
            const Icon(Icons.access_time, size: 20),
            Text(deliveryTime),
          ],
        ),
        Text('Tk $price (per serving)',
            style: const TextStyle(color: Colors.red)),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class RestaurantInfo {
  final String name;
  final String address;
  final String openingHours;

  RestaurantInfo({
    required this.name,
    required this.address,
    required this.openingHours,
  });
}

class RestaurantInfoWidget extends StatelessWidget {
  final RestaurantInfo restaurantInfo;

  const RestaurantInfoWidget({super.key, required this.restaurantInfo});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          restaurantInfo.name,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          restaurantInfo.address,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
        Row(
          children: [
            const Icon(Icons.access_time, size: 16, color: Colors.green),
            const SizedBox(width: 4),
            Text(
              restaurantInfo.openingHours,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

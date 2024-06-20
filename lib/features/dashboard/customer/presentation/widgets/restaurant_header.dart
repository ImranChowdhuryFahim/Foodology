import 'package:flutter/material.dart';

class RestaurantHeader extends StatelessWidget {
  final Map<String, dynamic> data;

  const RestaurantHeader({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
            child: Image.asset(data['image'],
                width: MediaQuery.of(context).size.width * 0.9,
                height: 200,
                fit: BoxFit.cover)),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(data['name'],
                  style: const TextStyle(
                      fontSize: 22, fontWeight: FontWeight.bold)),
              Row(
                children: [
                  const Icon(Icons.star, color: Colors.amber, size: 20),
                  Text('${data['rating']} (${data['review']} reviews)'),
                ],
              ),
              Row(
                children: [
                  Text(
                      '${data['distance']} away | Delivery fee ${data['deliveryFee']} | Minimum order amount ${data['minOrder']}',
                      style: const TextStyle(fontSize: 12)),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.access_time,
                      color: data['status'] == 'Closed'
                          ? Colors.red
                          : Colors.green,
                      size: 20),
                  Text(data['status'],
                      style: TextStyle(
                          color: data['status'] == 'Closed'
                              ? Colors.red
                              : Colors.green)),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

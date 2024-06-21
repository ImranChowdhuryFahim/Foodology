import 'package:flutter/material.dart';
import 'package:foodology/features/dashboard/customer/presentation/widgets/rider_info.dart';

class OrderTrackScreen extends StatelessWidget {
  static route() =>
      MaterialPageRoute(builder: (context) => const OrderTrackScreen());
  const OrderTrackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Track'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/map.png'), // Replace with the path to your placeholder map image
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Expanded(
            child: RiderInfo(),
          ),
        ],
      ),
    );
  }
}
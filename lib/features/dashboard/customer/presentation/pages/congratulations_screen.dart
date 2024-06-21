import 'package:flutter/material.dart';
import 'package:foodology/features/dashboard/customer/presentation/pages/order_track_screen.dart';
import 'package:foodology/features/dashboard/customer/presentation/widgets/card_button.dart';

class CongratulationsScreen extends StatelessWidget {
  static route() =>
      MaterialPageRoute(builder: (context) => const CongratulationsScreen());
  const CongratulationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'Congratulations',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Your order has been placed',
              style: TextStyle(fontSize: 15),
            ),
            const SizedBox(height: 20),
            CardButton(
              title: 'See Live Location',
              onPress: () => Navigator.push(context, OrderTrackScreen.route()),
              description:
                  'You can see the live location of the rider after your ordered food is handed over to the rider',
            ),
            const SizedBox(height: 10),
            CardButton(
              title: 'Estimated Delivery Time',
              onPress: () => {},
              description: '15-20 minutes',
            ),
          ],
        ),
      ),
    );
  }
}

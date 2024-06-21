import 'package:flutter/material.dart';
import 'package:foodology/features/dashboard/customer/presentation/pages/location_select.dart';
import 'package:foodology/features/dashboard/customer/presentation/widgets/card_button.dart';

class LocationScreen extends StatelessWidget {
  static route() =>
      MaterialPageRoute(builder: (context) => const LocationScreen());
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            CardButton(
              title: 'Use saved location',
              onPress: () => Navigator.push(context, LocationSelect.route()),
              description:
                  'You can see the live location of the rider after your ordered food is handed over to the rider',
            ),
            const SizedBox(height: 10),
            CardButton(
              title: 'Select a new location',
              onPress: () => Navigator.push(context, LocationSelect.route()),
              description:
                  'You can see the live location of the rider after your ordered food is handed over to the rider',
            ),
          ],
        ),
      ),
    );
  }
}

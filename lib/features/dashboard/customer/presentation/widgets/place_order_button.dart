import 'package:flutter/material.dart';
import 'package:foodology/features/dashboard/customer/presentation/pages/location_confirmation.dart';

class PlaceOrderButton extends StatelessWidget {
  const PlaceOrderButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => Navigator.push(context, LocationScreen.route()),
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromRGBO(217, 217, 217, 1),
        foregroundColor: Colors.black,
        padding: const EdgeInsets.symmetric(vertical: 15),
        textStyle: const TextStyle(fontSize: 18),
      ),
      child: const Text(
        'Place Order',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}

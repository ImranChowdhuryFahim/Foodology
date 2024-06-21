import 'package:flutter/material.dart';
import 'package:foodology/features/dashboard/customer/presentation/pages/congratulations_screen.dart';

class LocationSelect extends StatelessWidget {
  static route() =>
      MaterialPageRoute(builder: (context) => const LocationSelect());
  const LocationSelect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.my_location),
            title: Text('Use Current Location'),
          ),
          Expanded(
            child: Center(
              child: Image.asset('assets/images/map.png'),
            ),
          ),
          Container(
            color: Colors.orange,
            width: double.infinity,
            child: TextButton(
              onPressed: () =>
                  Navigator.push(context, CongratulationsScreen.route()),
              child: const Text(
                'CONFIRM LOCATION',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

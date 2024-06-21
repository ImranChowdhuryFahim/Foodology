import 'package:flutter/material.dart';
import 'package:foodology/features/dashboard/customer/presentation/pages/food_delivered_screen.dart';

class RiderInfo extends StatelessWidget {
  const RiderInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100],
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 40),
            Row(
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/images/rider.png'),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Mr Rahim',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '9BX8#',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.phone),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.message),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Divider(
              color: Color.fromRGBO(125, 124, 124, 1),
            ),
            const Row(
              children: [
                Icon(
                  Icons.circle,
                  color: Colors.orange,
                  size: 15,
                ),
                SizedBox(width: 10),
                Text(
                  'On the way',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Text(
                  '25 min',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              'Mirpur 12, Dhaka',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[700],
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () =>
                  Navigator.push(context, FoodDeliveredScreen.route()),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 15),
              ),
              child: const Text(
                'Order Received',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

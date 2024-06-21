import 'package:flutter/material.dart';
import 'package:foodology/features/dashboard/customer/presentation/pages/customer_homepage.dart';

class FoodDeliveredScreen extends StatelessWidget {
  static route() =>
      MaterialPageRoute(builder: (context) => FoodDeliveredScreen());
  final TextEditingController _controller = TextEditingController();
  FoodDeliveredScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Text(
                'Congratulations',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                'Your food is delivered',
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Rate the restaurant'),
                  Row(
                    children: List.generate(5, (index) {
                      return const Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 16,
                      );
                    }),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Row(
                children: [Text('Add a comment')],
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _controller,
                decoration: InputDecoration(
                  fillColor: Colors.grey,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () =>
                    Navigator.push(context, CustomerHomepage.route()),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0F961D),
                  foregroundColor: Colors.white,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

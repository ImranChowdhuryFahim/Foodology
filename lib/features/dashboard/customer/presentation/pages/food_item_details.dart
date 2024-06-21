import 'package:flutter/material.dart';
import 'package:foodology/features/dashboard/customer/presentation/widgets/add_ons.dart';
import 'package:foodology/features/dashboard/customer/presentation/widgets/horizontal_list.dart';
import 'package:foodology/features/dashboard/customer/presentation/widgets/ingredients_section.dart';
import 'package:foodology/features/dashboard/customer/presentation/widgets/meal_header.dart';

class FoodItemDetails extends StatelessWidget {
  static route() => MaterialPageRoute(builder: (context) => FoodItemDetails());
  final String imageUrl = 'assets/images/todays_pick.png';
  final String name = 'Burger';
  final double rating = 4.8;
  final int reviews = 100;
  final int price = 400;
  final String deliveryTime = 'Delivery in 30 Min';
  final String ingredients =
      'Kacchi Biryani embodies a harmonious fusion of aromatic spices, tender meat, and fragrant Basmati rice, all cooked together in a symphony of flavors. What distinguishes Kacchi Biryani from other variations is its unique cooking method: the raw marinated meat is layered with partially cooked rice, allowing the flavors to intermingle and develop into a tantalizing ensemble';

  final List<Map<String, String>> relateds = [
    {'image': 'assets/images/todays_pick.png', 'name': 'Burger'},
    {'image': 'assets/images/todays_pick.png', 'name': 'Burger'},
    {'image': 'assets/images/todays_pick.png', 'name': 'Burger'},
    {'image': 'assets/images/todays_pick.png', 'name': 'Burger'},
    {'image': 'assets/images/todays_pick.png', 'name': 'Burger'},
    {'image': 'assets/images/todays_pick.png', 'name': 'Burger'},
  ];
  final List<String> relatedMealsImages = [
    'assets/images/todays_pick.jpg',
    'assets/images/todays_pick.jpg',
    'assets/images/todays_pick.jpg',
  ];

  final List<AddOnItem> addOns = [
    AddOnItem(
        imageUrl: 'assets/images/mayo.png', name: 'Mayonnaise', price: 50),
    AddOnItem(
        imageUrl: 'assets/images/mayo.png', name: 'Chilli Sauce', price: 50),
    AddOnItem(imageUrl: 'assets/images/mayo.png', name: 'Hot Sauce', price: 50),
  ];

  FoodItemDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_border),
            color: Colors.black,
            onPressed: () => {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MealHeader(
                imageUrl: imageUrl,
                name: name,
                rating: rating,
                reviews: reviews,
                price: price,
                deliveryTime: deliveryTime,
              ),
              const SizedBox(height: 16),
              IngredientsSection(ingredients: ingredients),
              const SizedBox(height: 16),
              const Text('Related Foods',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              HorizontalList(items: relateds),
              const SizedBox(height: 16),
              AddOns(addOns: addOns),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(244, 47, 47, 1),
                foregroundColor: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
              ),
              child: const Text('Order Now'),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
              ),
              child: const Text('Add to Cart'),
            ),
          ],
        ),
      ),
    );
  }
}

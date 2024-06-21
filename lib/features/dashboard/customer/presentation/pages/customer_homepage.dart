import 'package:flutter/material.dart';
import 'package:foodology/features/dashboard/customer/presentation/pages/cart_details.dart';
import 'package:foodology/features/dashboard/customer/presentation/pages/chat_screen.dart';
import 'package:foodology/features/dashboard/customer/presentation/pages/customer_account.dart';
import 'package:foodology/features/dashboard/customer/presentation/pages/food_item_details.dart';
import 'package:foodology/features/dashboard/customer/presentation/pages/restaurant_details.dart';
import 'package:foodology/features/dashboard/customer/presentation/widgets/section_title.dart';
import 'package:foodology/features/dashboard/customer/presentation/widgets/todays_picks_list.dart';

class CustomerHomepage extends StatelessWidget {
  static route() => MaterialPageRoute(builder: (context) => CustomerHomepage());
  CustomerHomepage({super.key});

  final List<Map<String, String>> catagories = [
    {'image': 'catagory', 'name': 'Traditional'},
    {'image': 'catagory', 'name': 'Traditional'},
    {'image': 'catagory', 'name': 'Traditional'},
    {'image': 'catagory', 'name': 'Traditional'},
    {'image': 'catagory', 'name': 'Traditional'},
  ];

  final List<Map<String, String>> todayspicks = [
    {'image': 'todays_pick', 'name': 'Burger'},
    {'image': 'todays_pick', 'name': 'Burger'},
    {'image': 'todays_pick', 'name': 'Burger'},
    {'image': 'todays_pick', 'name': 'Burger'},
    {'image': 'todays_pick', 'name': 'Burger'},
  ];
  final List<Map<String, String>> recommended = [
    {'image': 'recommended', 'name': 'Pasta'},
    {'image': 'recommended', 'name': 'Pasta'},
    {'image': 'recommended', 'name': 'Pasta'},
    {'image': 'recommended', 'name': 'Pasta'},
    {'image': 'recommended', 'name': 'Pasta'},
  ];
  final List<Map<String, String>> popularRestaurants = [
    {'image': 'popular_restaurant', 'name': 'Pallabi Kitchen'},
    {'image': 'popular_restaurant', 'name': 'Pallabi Kitchen'},
    {'image': 'popular_restaurant', 'name': 'Pallabi Kitchen'},
    {'image': 'popular_restaurant', 'name': 'Pallabi Kitchen'},
    {'image': 'popular_restaurant', 'name': 'Pallabi Kitchen'},
  ];
  final List<Map<String, String>> restaurants = [
    {'image': 'takeout', 'name': 'Takeout'},
    {'image': 'takeout', 'name': 'Takeout'},
    {'image': 'takeout', 'name': 'Takeout'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const Icon(Icons.menu),
        title: SizedBox(
          height: 40,
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              hintStyle: const TextStyle(color: Colors.grey),
              prefixIcon: const Icon(Icons.search, color: Colors.grey),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
              ),
              contentPadding: EdgeInsets.zero,
            ),
          ),
        ),
        actions: [
          IconButton(
           onPressed: (){},
           icon: const Icon(Icons.filter_alt_outlined)
           ),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () => Navigator.push(context, CartDetails.route()),
          ),
          const SizedBox(width: 16),
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () => Navigator.push(context, CustomerAccount.route()),
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.red.shade600,
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
              child: GestureDetector(
                onTap: () => Navigator.push(context, ChatScreen.route()),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/pikachu.png',
                      height: 24,
                    ),
                    const SizedBox(width: 8),
                    const Expanded(
                      child: Text(
                        'Chat with Pikachu, your personal AI food delivery assistant',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SectionTitle(title: "Categories"),
                  TodaysPicksList(
                    todaysPicks: catagories,
                    imageHeight: 120,
                    imageWidth: 120,
                    routeGenerator: (item) => FoodItemDetails.route(),
                  ),
                  const SectionTitle(title: "Today's pick"),
                  TodaysPicksList(
                    todaysPicks: todayspicks,
                    imageHeight: 150,
                    imageWidth: 200,
                    routeGenerator: (item) => FoodItemDetails.route(),
                  ),
                  const SectionTitle(title: "Recommended"),
                  TodaysPicksList(
                    todaysPicks: recommended,
                    imageHeight: 120,
                    imageWidth: 120,
                    routeGenerator: (item) => FoodItemDetails.route(),
                  ),
                  const SectionTitle(title: "Popular Restaurants"),
                  TodaysPicksList(
                    todaysPicks: popularRestaurants,
                    imageHeight: 120,
                    imageWidth: 120,
                    routeGenerator: (item) => RestaurantDetails.route(),
                  ),
                  const SectionTitle(title: "Popular Cuisines"),
                  TodaysPicksList(
                    todaysPicks: catagories,
                    imageHeight: 120,
                    imageWidth: 120,
                    routeGenerator: (item) => FoodItemDetails.route(),
                  ),
                  const SectionTitle(title: "Restaurants Near You"),
                  TodaysPicksList(
                    todaysPicks: restaurants,
                    imageHeight: 120,
                    imageWidth: 120,
                    routeGenerator: (item) => RestaurantDetails.route(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.store), label: 'Stores'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favorites'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Notifications'),
        ],
      ),
    );
  }
}

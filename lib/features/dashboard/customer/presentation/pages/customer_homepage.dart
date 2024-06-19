import 'package:flutter/material.dart';
import 'package:foodology/features/dashboard/customer/presentation/widgets/catagory_list.dart';
import 'package:foodology/features/dashboard/customer/presentation/widgets/horizontal_list.dart';
import 'package:foodology/features/dashboard/customer/presentation/widgets/section_title.dart';
import 'package:foodology/features/dashboard/customer/presentation/widgets/todays_picks_list.dart';

class CustomerHomepage extends StatelessWidget {
  static route() => MaterialPageRoute(builder: (context) => CustomerHomepage());
  CustomerHomepage({super.key});

  final List<Map<String, String>> catagories = [
    {'image': 'assets/images/catagory.png', 'name': 'Lunch'},
    {'image': 'assets/images/catagory.png', 'name': 'Lunch'},
    {'image': 'assets/images/catagory.png', 'name': 'Lunch'},
    {'image': 'assets/images/catagory.png', 'name': 'Lunch'},
    {'image': 'assets/images/catagory.png', 'name': 'Lunch'},
    {'image': 'assets/images/catagory.png', 'name': 'Lunch'},
  ];

  final List<Map<String, String>> todayspicks = [
    {'image': 'todays_pick', 'name': 'Burger'},
    {'image': 'todays_pick', 'name': 'Burger'},
    {'image': 'todays_pick', 'name': 'Burger'},
    {'image': 'todays_pick', 'name': 'Burger'},
    {'image': 'todays_pick', 'name': 'Burger'},
  ];
  final List<Map<String, String>> recommended = [
    {'image': 'assets/images/recommended.png', 'name': 'Burger'},
    {'image': 'assets/images/recommended.png', 'name': 'Burger'},
    {'image': 'assets/images/recommended.png', 'name': 'Burger'},
    {'image': 'assets/images/recommended.png', 'name': 'Burger'},
    {'image': 'assets/images/recommended.png', 'name': 'Burger'},
    {'image': 'assets/images/recommended.png', 'name': 'Burger'},
  ];
  final List<Map<String, String>> popularRestaurants = [
    {'image': 'assets/images/popular_restaurant.png', 'name': 'Burger'},
    {'image': 'assets/images/popular_restaurant.png', 'name': 'Burger'},
    {'image': 'assets/images/popular_restaurant.png', 'name': 'Burger'},
  ];
  final List<Map<String, String>> restaurants = [
    {'image': 'assets/images/takeout.png', 'name': 'Burger'},
    {'image': 'assets/images/takeout.png', 'name': 'Burger'},
    {'image': 'assets/images/takeout.png', 'name': 'Burger'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow.shade700,
        elevation: 0,
        leading: const Icon(Icons.menu, color: Colors.black),
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
            icon: const Icon(Icons.shopping_cart),
            color: Colors.black,
            onPressed: () => {},
          ),
          const SizedBox(width: 16),
          IconButton(
            icon: const Icon(Icons.account_circle),
            color: Colors.black,
            onPressed: () => {},
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
              child: const Row(
                children: [
                  Icon(Icons.pets, color: Colors.yellow, size: 24),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'Chat with Pikachu, your personal AI food delivery assistant',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SectionTitle(title: "Categories"),
                  CatagoryList(catagories: catagories),
                  const SectionTitle(title: "Today's pick"),
                  TodaysPicksList(todaysPicks: todayspicks),
                  const SectionTitle(title: "Recommended"),
                  HorizontalList(items: recommended),
                  const SectionTitle(title: "Popular Restaurants"),
                  HorizontalList(items: popularRestaurants),
                  const SectionTitle(title: "Popular Cuisines"),
                  HorizontalList(items: catagories),
                  const SectionTitle(title: "Restaurants Near You"),
                  HorizontalList(items: restaurants),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.yellow.shade700,
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

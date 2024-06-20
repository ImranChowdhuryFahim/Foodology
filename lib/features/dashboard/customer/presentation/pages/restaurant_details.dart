import 'package:flutter/material.dart';
import 'package:foodology/features/dashboard/customer/presentation/pages/food_item_details.dart';
import 'package:foodology/features/dashboard/customer/presentation/widgets/category_tab_bar.dart';
import 'package:foodology/features/dashboard/customer/presentation/widgets/category_tab_items.dart';
import 'package:foodology/features/dashboard/customer/presentation/widgets/restaurant_header.dart';
import 'package:foodology/features/dashboard/customer/presentation/widgets/reviews.dart';
import 'package:foodology/features/dashboard/customer/presentation/widgets/section_title.dart';
import 'package:foodology/features/dashboard/customer/presentation/widgets/todays_picks_list.dart';

class RestaurantDetails extends StatelessWidget {
  static route() =>
      MaterialPageRoute(builder: (context) => RestaurantDetails());
  RestaurantDetails({super.key});
  final List<Map<String, String>> deals = [
    {'image': 'todays_pick', 'name': 'Burger'},
    {'image': 'todays_pick', 'name': 'Burger'},
    {'image': 'todays_pick', 'name': 'Burger'},
    {'image': 'todays_pick', 'name': 'Burger'},
    {'image': 'todays_pick', 'name': 'Burger'},
  ];
  final restaurantData = {
    'name': 'Pallabi Kitchen House',
    'rating': 4.8,
    'review': 100,
    'distance': '3.3 km',
    'deliveryFee': '80 tk',
    'minOrder': '50 tk',
    'status': 'Closed',
    'image': 'assets/images/popular_restaurant.png',
    'deals': [
      {'image': 'todays_pick', 'name': 'Burger'},
      {'image': 'todays_pick', 'name': 'Burger'},
      {'image': 'todays_pick', 'name': 'Burger'},
      {'image': 'todays_pick', 'name': 'Burger'},
      {'image': 'todays_pick', 'name': 'Burger'},
    ],
    'categories': [
      {
        'name': 'Popular',
        'items': [
          {'image': 'assets/images/todays_pick.png', 'name': 'Egg Omlet'},
          {'image': 'assets/images/todays_pick.png', 'name': 'Nun Roti'},
          {'image': 'assets/images/todays_pick.png', 'name': 'Egg Omlet'},
          {'image': 'assets/images/todays_pick.png', 'name': 'Nun Roti'},
          {'image': 'assets/images/todays_pick.png', 'name': 'Egg Omlet'},
          {'image': 'assets/images/todays_pick.png', 'name': 'Nun Roti'},
        ]
      },
      {
        'name': 'Snacks',
        'items': [
          {'image': 'assets/images/todays_pick.png', 'name': 'Chicken Chaap'},
          {
            'image': 'assets/images/todays_pick.png',
            'name': 'Tandoori Chicken'
          },
        ]
      },
      {
        'name': 'Drinks',
        'items': [
          {'image': 'assets/images/todays_pick.png', 'name': 'Butter Nun'},
          {'image': 'assets/images/todays_pick.png', 'name': 'Plain Rice'},
        ]
      }
    ],
    'reviews': [
      {
        'name': 'Asif Mahmud',
        'rating': 4,
        'comment': 'Very good taste and service is also good.'
      },
      {
        'name': 'Maheen Islam',
        'rating': 5,
        'comment': 'Very good taste and service is also good.'
      }
    ]
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_border),
            color: Colors.black,
            onPressed: () => {},
          ),
        ],
      ),
      body: DefaultTabController(
        length: (restaurantData['categories'] as List).length,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RestaurantHeader(data: restaurantData),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: SectionTitle(title: 'Available Deals'),
              ),
              TodaysPicksList(
                todaysPicks: deals,
                routeGenerator: (item) => FoodItemDetails.route(),
              ),
              CategoryTabBar(
                  categories: restaurantData['categories']
                      as List<Map<String, dynamic>>),
              CategoryTabItems(
                  categories: restaurantData['categories']
                      as List<Map<String, dynamic>>),
              Reviews(
                  reviews:
                      restaurantData['reviews'] as List<Map<String, dynamic>>),
            ],
          ),
        ),
      ),
    );
  }
}

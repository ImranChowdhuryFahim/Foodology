import 'package:flutter/material.dart';

class CategoryTabBar extends StatelessWidget {
  final List<Map<String, dynamic>> categories;

  const CategoryTabBar({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          isScrollable: true,
          labelColor: Colors.red,
          unselectedLabelColor: Colors.black,
          indicatorColor: Colors.red,
          tabs: categories
              .map((category) => Tab(text: category['name']))
              .toList(),
        ),
      ],
    );
  }
}

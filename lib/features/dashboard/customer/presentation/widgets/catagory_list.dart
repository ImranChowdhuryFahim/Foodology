import 'package:flutter/material.dart';
import 'package:foodology/features/dashboard/customer/presentation/widgets/catagory_item.dart';

class CatagoryList extends StatelessWidget {
  final List<Map<String, String>> catagories;

  const CatagoryList({
    super.key,
    required this.catagories,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: catagories.map((catagoryItem) {
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: CategoryItem(
              imagePath: catagoryItem['image']!,
              name: catagoryItem['name']!,
            ),
          );
        }).toList(),
      ),
    );
  }
}

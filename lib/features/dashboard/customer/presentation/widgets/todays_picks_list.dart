import 'package:flutter/material.dart';
import 'package:foodology/features/common/presentation/widgets/image_button.dart';
import 'package:foodology/features/dashboard/customer/presentation/pages/food_item_details.dart';

class TodaysPicksList extends StatelessWidget {
  final List<Map<String, String>> todaysPicks;

  const TodaysPicksList({
    super.key,
    required this.todaysPicks,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: todaysPicks.map((item) {
          return Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: ImageButton(
                buttonText: item['name']!,
                imageName: item['image']!,
                route: FoodItemDetails.route(),
                imageHeight: 120,
                imageWidth: 200,
              ));
        }).toList(),
      ),
    );
  }
}

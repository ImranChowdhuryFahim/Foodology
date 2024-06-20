import 'package:flutter/material.dart';
import 'package:foodology/features/common/presentation/widgets/image_button.dart';

typedef RouteGenerator = Route<dynamic> Function(Map<String, String> item);

class TodaysPicksList extends StatelessWidget {
  final List<Map<String, String>> todaysPicks;
  final RouteGenerator routeGenerator;

  const TodaysPicksList({
    super.key,
    required this.todaysPicks,
    required this.routeGenerator,
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
                route: routeGenerator(item),
                imageHeight: 120,
                imageWidth: 200,
              ));
        }).toList(),
      ),
    );
  }
}

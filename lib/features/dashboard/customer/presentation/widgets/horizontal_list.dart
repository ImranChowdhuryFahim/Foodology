import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  final List<Map<String, String>> items;

  const HorizontalList({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items.map((item) {
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: SizedBox(
              width: 100,
              height: 120,
              child: Image.asset(
                item['image']!,
                fit: BoxFit.cover,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

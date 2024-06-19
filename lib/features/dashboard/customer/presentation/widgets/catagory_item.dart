import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String imagePath;
  final String name;

  const CategoryItem({super.key, required this.imagePath, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 100,
          height: 100,
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
        ),
        Center(child: Text(name, style: const TextStyle(fontSize: 14))),
      ],
    );
  }
}

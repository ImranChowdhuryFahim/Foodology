import 'package:flutter/material.dart';

class DashboardItem extends StatelessWidget {
  final String title;

  const DashboardItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.all(28),
          decoration: BoxDecoration(
            color: const Color.fromRGBO(217, 217, 217, 0.5),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              title,
              style: const TextStyle(fontSize: 15),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

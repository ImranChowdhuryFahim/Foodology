import 'package:flutter/material.dart';
import 'package:foodology/features/dashboard/restaurant/presentation/pages/add_menu_page.dart';

class MenuButton extends StatelessWidget {
  final String title;
  final IconData icon;

  const MenuButton({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context, AddMenuPage.route()),
      child: SizedBox(
        width: double.infinity,
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 20),
              const SizedBox(width: 8),
              Text(title, style: const TextStyle(fontSize: 16)),
            ],
          ),
        ),
      ),
    );
  }
}

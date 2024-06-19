import 'package:flutter/material.dart';

class AccountOption extends StatelessWidget {
  final String title;
  final IconData icon;

  const AccountOption({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.black),
      title: Text(title),
      onTap: () {},
    );
  }
}

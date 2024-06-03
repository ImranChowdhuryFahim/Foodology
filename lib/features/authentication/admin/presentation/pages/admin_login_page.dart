import 'package:flutter/material.dart';

class AdminLoginPage extends StatelessWidget{
  static route() => MaterialPageRoute(builder: (context)=> const AdminLoginPage());
  const AdminLoginPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Text("Admin Login Page"),
    );
  }

  
}
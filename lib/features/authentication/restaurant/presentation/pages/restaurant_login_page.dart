import 'package:flutter/material.dart';

class RestaurantLoginPage extends StatelessWidget{
  static route() => MaterialPageRoute(builder: (context)=> const RestaurantLoginPage());
  const RestaurantLoginPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Text("Restaurant Login Page"),
    );
  }

  
}
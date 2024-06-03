import 'package:flutter/material.dart';

class RestaurantRegistrationPage extends StatelessWidget{
  static route() => MaterialPageRoute(builder: (context)=> const RestaurantRegistrationPage());
  const RestaurantRegistrationPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Text("Restaurant Registraion Page"),
    );
  }

  
}
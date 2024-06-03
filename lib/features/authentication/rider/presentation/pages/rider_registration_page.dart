import 'package:flutter/material.dart';

class RiderRegistrationPage extends StatelessWidget{
  static route() => MaterialPageRoute(builder: (context)=> const RiderRegistrationPage());
  const RiderRegistrationPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Text("Rider Registration Page"),
    );
  }

  
}
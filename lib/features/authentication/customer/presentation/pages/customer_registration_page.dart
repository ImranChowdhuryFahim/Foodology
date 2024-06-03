import 'package:flutter/material.dart';

class CustomerRegistrationPage extends StatelessWidget{
  static route() => MaterialPageRoute(builder: (context)=> const CustomerRegistrationPage());
  const CustomerRegistrationPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Text("Customer Registration Page"),
    );
  }

  
}
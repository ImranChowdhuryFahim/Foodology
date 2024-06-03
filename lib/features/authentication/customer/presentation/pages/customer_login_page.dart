import 'package:flutter/material.dart';

class CustomerLoginPage extends StatelessWidget{
  static route() => MaterialPageRoute(builder: (context)=> const CustomerLoginPage());
  const CustomerLoginPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Text("Customer Login Page"),
    );
  }

  
}
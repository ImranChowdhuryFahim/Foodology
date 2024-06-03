import 'package:flutter/material.dart';

class RiderLoginPage extends StatelessWidget{
  static route() => MaterialPageRoute(builder: (context)=> const RiderLoginPage());
  const RiderLoginPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Text("Rider Login Page"),
    );
  }

  
}
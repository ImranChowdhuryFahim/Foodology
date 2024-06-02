import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Foodology',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Foodology')),
        body: const Center(
           child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Foodology',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),)
            ],
           ),
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:foodology/features/authentication/admin/presentation/pages/admin_login_page.dart';
import 'package:foodology/features/authentication/customer/presentation/pages/customer_login_page.dart';
import 'package:foodology/features/authentication/restaurant/presentation/pages/restaurant_login_page.dart';
import 'package:foodology/features/authentication/rider/presentation/pages/rider_login_page.dart';

class FirstPage extends StatelessWidget{

  const FirstPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/foodoloy.png',height: 280),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap:() => Navigator.push(context,AdminLoginPage.route()),
                    child: Column(
                      children: [
                        Image.asset('assets/images/admin.png',height: 80,),
                        const Text('Admin')
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(context,CustomerLoginPage.route()),
                    child: Column(
                      children: [
                        Image.asset('assets/images/customer.png',height: 80),
                        const Text('Customer')
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.push(context,RestaurantLoginPage.route()),
                    child: Column(
                      children: [
                        Image.asset('assets/images/restaurant.png',height: 80),
                        const Text('Restaurant')
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(context,RiderLoginPage.route()),
                    child: Column(
                      children: [
                        Image.asset('assets/images/rider.png',height: 80),
                        const Text('Rider')
                      ],
                    ),
                  ),
                ],
              ),
              // const SizedBox(height: 50,),
              // RichText(text: const TextSpan(text: 'Not a member? ', style: TextStyle(color: Colors.black), children: [TextSpan(text: 'Register Yourself', style: TextStyle(color: Colors.blue))]))
            ],
           )),
      );
  }
  
}
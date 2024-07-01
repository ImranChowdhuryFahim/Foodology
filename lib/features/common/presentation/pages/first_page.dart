import 'package:flutter/material.dart';
import 'package:foodology/features/authentication/admin/presentation/pages/admin_login_page.dart';
import 'package:foodology/features/authentication/customer/presentation/pages/customer_login_page.dart';
import 'package:foodology/features/authentication/restaurant/presentation/pages/restaurant_login_page.dart';
import 'package:foodology/features/authentication/rider/presentation/pages/rider_login_page.dart';
import 'package:foodology/features/common/presentation/widgets/image_button.dart';

class FirstPage extends StatelessWidget {
  static route() => MaterialPageRoute(builder: (context) => const FirstPage());

  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        children: [
          Image.asset('assets/images/foodoloy.png', height: 280),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ImageButton(
                  route: AdminLoginPage.route(),
                  imageName: 'admin',
                  buttonText: 'Admin'),
              ImageButton(
                  route: CustomerLoginPage.route(),
                  imageName: 'customer',
                  buttonText: 'Customer'),
            ],
          ),
          const SizedBox(height: 50),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ImageButton(
                  route: RestaurantLoginPage.route(),
                  imageName: 'restaurant',
                  buttonText: 'Restaurant'),
              ImageButton(
                  route: RiderLoginPage.route(),
                  imageName: 'rider',
                  buttonText: 'Rider'),
            ],
          ),
        ],
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodology/core/common/cubits/user_info/user_info_cubit.dart';
import 'package:foodology/features/common/presentation/pages/first_page.dart';
import 'package:foodology/features/dashboard/restaurant/presentation/widgets/dashboard_item.dart';
import 'package:foodology/features/dashboard/restaurant/presentation/widgets/menu_button.dart';
import 'package:foodology/features/dashboard/restaurant/presentation/widgets/restaurant_info.dart';

class RestaurantHomepage extends StatelessWidget {
  static route() =>
      MaterialPageRoute(builder: (context) => RestaurantHomepage());

  RestaurantHomepage({super.key});

  final RestaurantInfo restaurantInfo = RestaurantInfo(
    name: "Pallabi Kitchen House",
    address: "Mirpur 12, Dhaka",
    openingHours: "10am - 11pm",
  );

  @override
  Widget build(BuildContext context) {
    final userCubit = context.read<UserInfoCubit>();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            RestaurantInfoWidget(restaurantInfo: restaurantInfo),
            const SizedBox(height: 16),
            const Text(
              "Dashboard",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    DashboardItem(title: "Offered Menus"),
                    SizedBox(width: 8),
                    DashboardItem(title: "Orders"),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    DashboardItem(title: "Complains"),
                    SizedBox(width: 8),
                    DashboardItem(title: "Reviews"),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    DashboardItem(title: "Sale Summary"),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),
            const MenuButton(
              title: "Add Menu",
              icon: Icons.add,
            ),
            const SizedBox(height: 16),
            const MenuButton(
              title: "Edit Menu",
              icon: Icons.edit,
            ),
            const SizedBox(height: 16),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red, foregroundColor: Colors.black),
                onPressed: () {
                  userCubit.logOut();
                  Navigator.pushAndRemoveUntil(
                    context,
                    FirstPage.route(),
                    (Route<dynamic> route) => false,
                  );
                },
                child: const Text("Log Out"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

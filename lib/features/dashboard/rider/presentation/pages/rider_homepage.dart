import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodology/core/common/cubits/user_info/user_info_cubit.dart';
import 'package:foodology/features/common/presentation/pages/first_page.dart';
import 'package:foodology/features/dashboard/rider/presentation/widgets/dashboard_item.dart';
import 'package:foodology/features/dashboard/rider/presentation/widgets/rider_info.dart';

class RiderHomepage extends StatelessWidget {
  static route() => MaterialPageRoute(builder: (context) => RiderHomepage());

  RiderHomepage({super.key});

  final RideProfilerInfo riderInfo = RideProfilerInfo(
    name: "Mr Rahim",
    id: "9BX8#",
    points: 384,
    imageUrl: 'assets/images/rider.png',
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
            const SizedBox(height: 30),
            const Text(
              "Welcome!",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            RiderInfoWidget(
              riderInfo: riderInfo,
            ),
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
                    DashboardItem(title: "Order Requests"),
                    SizedBox(width: 8),
                    DashboardItem(title: "Completed Deliveries"),
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
              ],
            ),
            const SizedBox(height: 30),
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

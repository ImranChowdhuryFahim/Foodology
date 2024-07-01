import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodology/core/common/cubits/user_info/user_info_cubit.dart';
import 'package:foodology/features/common/presentation/pages/first_page.dart';
import 'package:foodology/features/dashboard/admin/presentation/pages/admin_account.dart';

class AdminDashboard extends StatelessWidget {
  static route() =>
      MaterialPageRoute(builder: (context) => const AdminDashboard());
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final userCubit = context.read<UserInfoCubit>();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Admin Dashboard',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                      onPressed: () =>
                          Navigator.push(context, AdminAccount.route()),
                      icon: const Icon(
                        Icons.person,
                        size: 24,
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    'assets/images/admin-restaurant.png',
                    height: 150,
                  ),
                  Image.asset(
                    'assets/images/admin-customer.png',
                    height: 150,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    'assets/images/admin-rider.png',
                    height: 150,
                  ),
                  Image.asset(
                    'assets/images/admin-complain.png',
                    height: 150,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            ElevatedButton(
              onPressed: () {
                userCubit.logOut();
                Navigator.pushAndRemoveUntil(
                  context,
                  FirstPage.route(),
                  (Route<dynamic> route) => false,
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 240, 11, 11),
                foregroundColor: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
              ),
              child: const Text('Logout'),
            ),
            const SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:foodology/features/dashboard/admin/presentation/pages/admin_profile.dart';
import 'package:foodology/features/dashboard/admin/presentation/widgets/account_option.dart';

class AdminAccount extends StatelessWidget {
  static route() =>
      MaterialPageRoute(builder: (context) => const AdminAccount());
  const AdminAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Account & Setting',
            style: TextStyle(color: Colors.black)),
        actions: [
          IconButton(
            icon: const Icon(Icons.close, color: Colors.red),
            onPressed: () {
              // Add your onPressed code here!
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () => Navigator.push(context, AdminProfile.route()),
              child: Container(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.grey.shade300,
                    ),
                    const SizedBox(width: 16),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Admin',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              title: const Text('Account'),
              tileColor: Colors.orange.shade100,
            ),
            const AccountOption(title: 'Profile', icon: Icons.person),
            const AccountOption(title: 'Payment Details', icon: Icons.payment),
            const AccountOption(title: 'Order History', icon: Icons.history),
            const AccountOption(
                title: 'Saved Addresses', icon: Icons.location_on),
            ListTile(
              title: const Text('Settings'),
              tileColor: Colors.orange.shade100,
            ),
            const AccountOption(title: 'Languages', icon: Icons.language),
            const AccountOption(title: 'Permissions', icon: Icons.lock),
            ListTile(
              title: const Text('Legal & Help'),
              tileColor: Colors.orange.shade100,
            ),
            const AccountOption(
                title: 'Emergency Support', icon: Icons.support),
            const AccountOption(title: 'Help', icon: Icons.help),
            const AccountOption(title: 'Policies', icon: Icons.policy),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.red),
              title: const Text('Log Out'),
              onTap: () {},
            ),
            const Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.youtube_searched_for, color: Colors.red),
                  SizedBox(width: 16),
                  Icon(Icons.facebook, color: Colors.blue),
                  SizedBox(width: 16),
                  Icon(Icons.facebook, color: Colors.purple),
                  SizedBox(width: 16),
                  Icon(Icons.facebook, color: Colors.green),
                ],
              ),
            ),
            const Center(child: Text('Version 0.0.1')),
          ],
        ),
      ),
    );
  }
}

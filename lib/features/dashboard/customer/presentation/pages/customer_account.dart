import 'package:flutter/material.dart';
import 'package:foodology/features/authentication/customer/presentation/pages/customer_login_page.dart';
import 'package:foodology/features/dashboard/admin/presentation/widgets/account_option.dart';
import 'package:foodology/features/dashboard/customer/presentation/pages/customer_homepage.dart';
import 'package:foodology/features/dashboard/customer/presentation/pages/customer_profile.dart';

class CustomerAccount extends StatelessWidget {
  static route() =>
      MaterialPageRoute(builder: (context) => const CustomerAccount());
  const CustomerAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Account & Setting'),
        actions: [
          IconButton(
            icon: const Icon(Icons.close, color: Colors.red),
            onPressed: () => Navigator.push(context, CustomerHomepage.route()),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () => Navigator.push(context, CustomerProfile.route()),
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
                        Text('User',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const ListTile(
              title: Text('Account'),
              // tileColor: Colors.orange.shade100,
            ),
            const AccountOption(title: 'Profile', icon: Icons.person),
            const AccountOption(title: 'Payment Details', icon: Icons.payment),
            const AccountOption(title: 'Order History', icon: Icons.history),
            const AccountOption(
                title: 'Saved Addresses', icon: Icons.location_on),
            const ListTile(
              title: Text('Settings'),
              // tileColor: Colors.orange.shade100,
            ),
            const AccountOption(title: 'Languages', icon: Icons.language),
            const AccountOption(title: 'Permissions', icon: Icons.lock),
            const ListTile(
              title: Text('Legal & Help'),
              // tileColor: Colors.orange.shade100,
            ),
            const AccountOption(
                title: 'Emergency Support', icon: Icons.support),
            const AccountOption(title: 'Help', icon: Icons.help),
            const AccountOption(title: 'Policies', icon: Icons.policy),
            const ListTile(
              title: Text('More'),
              // tileColor: Colors.orange.shade100,
            ),
            ListTile(
              leading: const Icon(Icons.dark_mode, color: Colors.black),
              title: const Text('Dark Mode'),
              trailing: Switch(
                value: false,
                onChanged: (bool value) {},
              ),
              onTap: () {},
            ),
            const AccountOption(
                title: 'Terms & Conditions', icon: Icons.edit_document),
            const AccountOption(title: 'Privacy', icon: Icons.privacy_tip),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.red),
              title: const Text('Log Out'),
              onTap: () => Navigator.push(context, CustomerLoginPage.route()),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
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

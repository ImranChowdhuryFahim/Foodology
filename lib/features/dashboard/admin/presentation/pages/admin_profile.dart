import 'package:flutter/material.dart';
import 'package:foodology/features/common/presentation/widgets/custom_input.dart';

class AdminProfile extends StatelessWidget {
  static route() => MaterialPageRoute(builder: (context) => AdminProfile());
  AdminProfile({super.key});
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _phonenoController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.close, color: Colors.red),
            onPressed: () {
              // Add your onPressed code here!
            },
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 50),
                Image.asset(
                  'assets/images/profile_picture.png',
                  height: 150,
                ),
                const SizedBox(height: 50),
                CustomInput(controller: _nameController, label: 'Name'),
                const SizedBox(
                  height: 20,
                ),
                CustomInput(controller: _addressController, label: 'Address'),
                const SizedBox(
                  height: 20,
                ),
                CustomInput(controller: _phonenoController, label: 'Phone No'),
                const SizedBox(
                  height: 20,
                ),
                CustomInput(controller: _emailController, label: 'Email'),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                        child: const Text('Edit Profile'),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                        child: const Text('Logout'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

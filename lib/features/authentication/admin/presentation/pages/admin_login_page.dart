import 'package:flutter/material.dart';
import 'package:foodology/features/common/presentation/widgets/custom_input.dart';

class AdminLoginPage extends StatelessWidget {
  static route() => MaterialPageRoute(builder: (context) => AdminLoginPage());
  AdminLoginPage({super.key});
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset('assets/images/foodoloy.png', height: 200),
                Image.asset('assets/images/admin.png', height: 100),
                const Text('Admin Login'),
                CustomInput(
                  controller: _usernameController,
                  label: 'Username',
                  hintText: 'Enter your username',
                ),
                const SizedBox(height: 20),
                CustomInput(
                  controller: _passwordController,
                  label: 'Password',
                  hintText: 'Enter your password',
                  isObcureText: true,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    String username = _usernameController.text;
                    String password = _passwordController.text;
                    print('Username: $username, Password: $password');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF0F961D),
                    foregroundColor: Colors.white,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  child: const Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

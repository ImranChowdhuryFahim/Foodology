import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodology/core/common/cubits/user_info/user_info_cubit.dart';
import 'package:foodology/features/common/presentation/widgets/custom_input.dart';
import 'package:foodology/features/authentication/customer/presentation/pages/customer_registration_page.dart';
import 'package:foodology/features/dashboard/customer/presentation/pages/customer_homepage.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'dart:convert';

class CustomerLoginPage extends StatelessWidget {
  static route() =>
      MaterialPageRoute(builder: (context) => CustomerLoginPage());
  CustomerLoginPage({super.key});
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void handleLogin(BuildContext context, UserInfoCubit userCubit) async {
    if (_usernameController.text.isEmpty || _passwordController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please fill in username and password'),
        ),
      );
      return;
    }
    try {
      final existingUser = await Supabase.instance.client
          .from('users')
          .select()
          .eq('document->>username', _usernameController.text)
          .eq('document->>password', _passwordController.text)
          .eq('document->>usertype', 'customer');

      if (existingUser.isEmpty) {
        if (!context.mounted) return;
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
            'No user exits with the given username or phone number',
          ),
        ));
        return;
      }

      userCubit.logIn(jsonEncode(existingUser[0]['document']));

      if (!context.mounted) return;

      Navigator.push(context, CustomerHomepage.route());
    } catch (error) {
      if (!context.mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content:
              Text('Login failed!. Please check your connection. ${error}'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final userCubit = context.read<UserInfoCubit>();
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
                Image.asset('assets/images/customer.png', height: 100),
                const Text('Customer Login'),
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
                  onPressed: () => handleLogin(context, userCubit),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF0F961D),
                    foregroundColor: Colors.white,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  child: const Text('Submit'),
                ),
                const SizedBox(
                  height: 50,
                ),
                GestureDetector(
                  onTap: () =>
                      Navigator.push(context, CustomerRegistrationPage.route()),
                  child: RichText(
                      text: TextSpan(
                          text: 'Not a member? ',
                          style: TextStyle(
                              color: Theme.of(context)
                                  .textTheme
                                  .headlineMedium
                                  ?.color),
                          children: const [
                        TextSpan(
                            text: 'Register Yourself',
                            style: TextStyle(
                                color: Color.fromARGB(255, 20, 97, 160)))
                      ])),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

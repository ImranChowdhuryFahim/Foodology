import 'package:flutter/material.dart';
import 'package:foodology/features/common/presentation/widgets/custom_input.dart';
import 'package:foodology/features/authentication/restaurant/presentation/pages/restaurant_login_page.dart';

class RestaurantRegistrationPage extends StatelessWidget {
  static route() =>
      MaterialPageRoute(builder: (context) => RestaurantRegistrationPage());
  RestaurantRegistrationPage({super.key});
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _fullnameController = TextEditingController();
  final TextEditingController _mobilenoController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _confirmpasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  const Text(
                    'Restaurant Registration',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  CustomInput(
                      controller: _usernameController, label: 'Username'),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomInput(
                      controller: _fullnameController, label: 'Full Name'),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomInput(
                      controller: _mobilenoController, label: 'Mobile No'),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomInput(controller: _emailController, label: 'Email'),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Location'),
                        Text(
                          'Set Location on Map',
                          style: TextStyle(color: Colors.blue),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomInput(
                    controller: _passwordController,
                    label: 'Password',
                    isObcureText: true,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomInput(
                    controller: _confirmpasswordController,
                    label: 'Confirm Password',
                    isObcureText: true,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {},
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
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () =>
                        Navigator.push(context, RestaurantLoginPage.route()),
                    child: RichText(
                        text: const TextSpan(
                            text: 'Already a member? ',
                            style: TextStyle(color: Colors.black),
                            children: [
                          TextSpan(
                              text: 'Login',
                              style: TextStyle(color: Colors.blue))
                        ])),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

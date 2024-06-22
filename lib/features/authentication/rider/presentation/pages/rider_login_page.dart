import 'package:flutter/material.dart';
import 'package:foodology/features/authentication/rider/presentation/pages/rider_registration_page.dart';
import 'package:foodology/features/common/presentation/widgets/custom_input.dart';
import 'package:foodology/features/dashboard/rider/presentation/pages/rider_homepage.dart';

class RiderLoginPage extends StatelessWidget {
  static route() => MaterialPageRoute(builder: (context) => RiderLoginPage());
  RiderLoginPage({super.key});
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
                Image.asset('assets/images/rider.png', height: 100),
                const Text('Rider Login'),
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
                  onPressed: () =>
                      Navigator.push(context, RiderHomepage.route()),
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
                      Navigator.push(context, RiderRegistrationPage.route()),
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

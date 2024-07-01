import 'package:flutter/material.dart';
import 'package:foodology/features/common/presentation/widgets/custom_input.dart';
import 'package:foodology/features/authentication/customer/presentation/pages/customer_login_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class CustomerRegistrationPage extends StatelessWidget {
  static route() =>
      MaterialPageRoute(builder: (context) => CustomerRegistrationPage());
  CustomerRegistrationPage({super.key});
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _fullnameController = TextEditingController();
  final TextEditingController _mobilenoController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _confirmpasswordController =
      TextEditingController();

  void handleRegistration(BuildContext context) async {
    if (_usernameController.text.isEmpty ||
        _fullnameController.text.isEmpty ||
        _mobilenoController.text.isEmpty ||
        _emailController.text.isEmpty ||
        _passwordController.text.isEmpty ||
        _confirmpasswordController.text.isEmpty ||
        _passwordController.text != _confirmpasswordController.text) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please fill in all fields and ensure passwords match'),
        ),
      );
      return;
    }
    try {
      final existingUser = await Supabase.instance.client
          .from('users')
          .select()
          .or('document->>username.eq.${_usernameController.text}, document->>mobileno.eq.${_mobilenoController.text}');

      if (existingUser.isNotEmpty) {
        if (!context.mounted) return;
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
            'User already exists with same username or phone number',
          ),
        ));
        return;
      }

      await Supabase.instance.client.from('users').insert({
        'document': {
          'usertype': 'customer',
          'username': _usernameController.text,
          'fullname': _fullnameController.text,
          'mobileno': _mobilenoController.text,
          'email': _emailController.text,
          'password': _passwordController.text,
        }
      });
      if (!context.mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text(
          'Registration Successfull! Login With your username and password',
        ),
      ));

      Navigator.push(context, CustomerLoginPage.route());
    } catch (error) {
      if (!context.mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
              'Registration failed!. Please check your connection. ${error}'),
        ),
      );
    }
  }

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
                    'Customer Registration',
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
                    onPressed: () => handleRegistration(context),
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
                        Navigator.push(context, CustomerLoginPage.route()),
                    child: RichText(
                        text: TextSpan(
                            text: 'Already a member? ',
                            style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .headlineMedium
                                    ?.color),
                            children: const [
                          TextSpan(
                              text: 'Login',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 20, 97, 160)))
                        ])),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

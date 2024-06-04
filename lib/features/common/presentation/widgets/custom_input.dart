import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final bool? isObcureText;
  final String? obscureCharacter;
  final String? hintText;
  final String label;
  final Widget? prefixIcon;

  const CustomInput({
    super.key,
    required this.controller,
    this.keyboardType,
    this.isObcureText = false,
    this.obscureCharacter = '*',
    this.hintText,
    required this.label,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: isObcureText!,
        obscuringCharacter: obscureCharacter!,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
          constraints:
              BoxConstraints(maxHeight: height * 0.065, maxWidth: width),
          hintText: hintText,
          prefixIcon: prefixIcon,
          label: Text(label),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );
  }
}

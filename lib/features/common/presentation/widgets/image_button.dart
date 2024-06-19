import 'package:flutter/material.dart';

class ImageButton extends StatelessWidget {
  final Route route;
  final String imageName;
  final double imageHeight;
  final double imageWidth;
  final String buttonText;
  const ImageButton(
      {super.key,
      required this.route,
      required this.imageName,
      this.imageHeight = 80,
      this.imageWidth = 80,
      required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context, route),
      child: Column(
        children: [
          Image.asset(
            'assets/images/$imageName.png',
            height: imageHeight,
            width: imageWidth,
          ),
          Text(buttonText)
        ],
      ),
    );
  }
}

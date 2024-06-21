import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final String text;
  final bool isBot;

  const ChatBubble({super.key, required this.text, required this.isBot});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isBot ? Alignment.centerLeft : Alignment.centerRight,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: isBot ? Colors.grey[300] : Colors.blue[300],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (isBot)
              CircleAvatar(
                child: Image.asset('assets/images/pikachu.png', height: 24),
              ),
            if (!isBot) const SizedBox(width: 10),
            Expanded(
              child: Text(
                text,
                style: const TextStyle(color: Colors.black),
              ),
            ),
            if (!isBot)
              const CircleAvatar(
                child: Icon(Icons.person),
              ),
            if (isBot) const SizedBox(width: 10),
          ],
        ),
      ),
    );
  }
}

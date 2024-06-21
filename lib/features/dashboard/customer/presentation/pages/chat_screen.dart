import 'package:flutter/material.dart';
import 'package:foodology/features/dashboard/customer/presentation/widgets/chat_bubble.dart';

class ChatScreen extends StatelessWidget {
  static route() => MaterialPageRoute(builder: (context) => ChatScreen());

  final TextEditingController _controller = TextEditingController();

  final List<Map<String, dynamic>> messages = [
    {"text": "Hi! How can I help you today?", "isBot": true},
    {"text": "Hello!", "isBot": false},
    {"text": "I have a question about my order.", "isBot": false},
    {"text": "Sure, please provide your order ID.", "isBot": true},
  ];

  ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Image.asset('assets/images/pikachu.png', height: 50),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return ChatBubble(
                  text: messages[index]["text"],
                  isBot: messages[index]["isBot"],
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            color: Colors.white,
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      hintText: 'Type a message',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

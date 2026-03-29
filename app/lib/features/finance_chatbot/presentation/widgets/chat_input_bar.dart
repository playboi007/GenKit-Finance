import 'package:flutter/material.dart';

/// Chat text field and send action (placeholder styling).
class ChatInputBar extends StatelessWidget {
  const ChatInputBar({super.key, required this.controller, this.onSend});

  final TextEditingController controller;
  final VoidCallback? onSend;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: controller,
            decoration: const InputDecoration(hintText: 'Ask about your data…'),
          ),
        ),
        IconButton(onPressed: onSend, icon: const Icon(Icons.send)),
      ],
    );
  }
}

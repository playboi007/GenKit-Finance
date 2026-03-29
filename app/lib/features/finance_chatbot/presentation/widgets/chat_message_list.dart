import 'package:flutter/material.dart';

/// Scrollable list of chat messages (placeholder).
class ChatMessageList extends StatelessWidget {
  const ChatMessageList({super.key, required this.messages});

  final List<String> messages;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) => ListTile(title: Text(messages[index])),
    );
  }
}

import 'package:darul_falah/features/chat/widgets/chat_body.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ChatBody(),
    );
  }
}

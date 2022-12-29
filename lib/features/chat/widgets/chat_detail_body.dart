import 'package:darul_falah/features/chat/widgets/bottom_container.dart';
import 'package:darul_falah/features/chat/widgets/chat_message_item.dart';
import 'package:flutter/material.dart';

class ChatDetailBody extends StatelessWidget {
  const ChatDetailBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          child: ListView(
            reverse: true,
            children: const [
              ChatMessageItem(),
              ChatMessageItem(),
              ChatMessageItem(),
            ],
          ),
        ),
        const BottomContainer(),
      ],
    );
  }
}

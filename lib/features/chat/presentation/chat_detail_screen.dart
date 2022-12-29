import 'package:darul_falah/core/presentation/widgets/base_appbar.dart';
import 'package:darul_falah/core/styles/text_theme.dart';
import 'package:darul_falah/features/chat/widgets/chat_detail_body.dart';
import 'package:flutter/material.dart';

class ChatDetailScreen extends StatelessWidget {
  const ChatDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar.light(
        title: Text(
          "Fashion & Kecantikan",
          style: textTheme.headline6,
        ),
      ),
      body: const ChatDetailBody(),
    );
  }
}

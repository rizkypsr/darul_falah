import 'package:darul_falah/core/presentation/widgets/base_appbar.dart';
import 'package:darul_falah/core/styles/text_theme.dart';
import 'package:darul_falah/features/topic/widgets/topic_detail_body.dart';
import 'package:flutter/material.dart';

class TopicDetailScreen extends StatelessWidget {
  const TopicDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar.light(
        title: Text(
          "Amtsilati Inspirasi",
          style: textTheme.headline6!.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: const TopicDetailBody(),
    );
  }
}

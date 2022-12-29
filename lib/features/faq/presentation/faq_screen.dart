import 'package:darul_falah/core/presentation/widgets/base_appbar.dart';
import 'package:darul_falah/features/faq/presentation/widgets/faq_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FaqScreen extends StatelessWidget {
  const FaqScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: BaseAppBar(
        title: Text("FAQ"),
      ),
      body: FaqScreenBody(),
    );
  }
}
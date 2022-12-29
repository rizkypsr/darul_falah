import 'package:darul_falah/core/presentation/widgets/base_appbar.dart';
import 'package:darul_falah/core/styles/text_theme.dart';
import 'package:darul_falah/features/notification/presentation/widgets/notification_screen_body.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar.light(
        title: Text("Notifikasi", style: textTheme.headline6,),
      ),
      body: NotificationScreenBody(),
    );
  }
}

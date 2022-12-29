import 'package:darul_falah/core/presentation/widgets/base_appbar.dart';
import 'package:darul_falah/features/calendar/presentation/widgets/calendar_body.dart';
import 'package:flutter/material.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar.light(
        title: Text("Kalender"),
      ),
      body: const CalendarBody(),
    );
  }
}

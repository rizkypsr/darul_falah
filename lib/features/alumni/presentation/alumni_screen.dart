import 'package:darul_falah/core/presentation/widgets/base_appbar.dart';
import 'package:darul_falah/core/styles/text_theme.dart';
import 'package:darul_falah/features/alumni/presentation/widgets/alumni_body.dart';
import 'package:flutter/material.dart';

class AlumniScreen extends StatelessWidget {
  const AlumniScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar.light(
        title: Text(
          "Alumni",
          style: textTheme.headline6!.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: AlumniBody(),
    );
  }
}

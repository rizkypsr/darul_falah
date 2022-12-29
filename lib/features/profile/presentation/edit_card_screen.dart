import 'package:darul_falah/core/presentation/widgets/base_appbar.dart';
import 'package:darul_falah/core/styles/text_theme.dart';
import 'package:darul_falah/features/profile/presentation/widgets/edit_card_screen_body.dart';
import 'package:flutter/material.dart';

class EditCardScreen extends StatelessWidget {
  const EditCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar.light(
        title: Text(
          "Ubah Data Kartu",
          style: textTheme.headline6,
        ),
      ),
      body: EditCardScreenBody(),
    );
  }
}

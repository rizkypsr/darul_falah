import 'package:darul_falah/core/presentation/widgets/base_appbar.dart';
import 'package:darul_falah/core/styles/text_theme.dart';
import 'package:darul_falah/features/profile/presentation/widgets/edit_profile_screen_body.dart';
import 'package:flutter/material.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar.light(
        title: Text(
          "Ubah Profil",
          style: textTheme.headline6,
        ),
      ),
      body: EditProfileScreenBody(),
    );
  }
}

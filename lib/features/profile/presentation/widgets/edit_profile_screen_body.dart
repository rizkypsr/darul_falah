import 'package:darul_falah/core/commons/constants.dart';
import 'package:darul_falah/core/presentation/widgets/custom_button.dart';
import 'package:darul_falah/core/presentation/widgets/custom_text_field.dart';
import 'package:darul_falah/core/styles/text_theme.dart';
import 'package:flutter/material.dart';

class EditProfileScreenBody extends StatelessWidget {
  EditProfileScreenBody({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: basePadding,
        vertical: largePadding,
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: 55,
            backgroundColor: Colors.grey[300],
            child: const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://via.placeholder.com/150'),
            ),
          ),
          Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CustomTextField(
                  label: "Nama",
                ),
                const SizedBox(
                  height: basePadding,
                ),
                const CustomTextField(
                  label: "Username",
                ),
                const SizedBox(
                  height: basePadding,
                ),
                const CustomTextField(
                  label: "Bio",
                ),
                const SizedBox(
                  height: basePadding,
                ),
                const CustomTextField(
                  label: "Email",
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.done,
                ),
                const SizedBox(
                  height: largePadding,
                ),
                CustomButton(
                  text: "Simpan",
                  onPressed: () {},
                ),
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text(
                      "Lupa password ?",
                      style: textTheme.caption,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Ganti password",
                          style: textTheme.caption!.copyWith(
                            decoration: TextDecoration.underline,
                          ),
                        ))
                  ],
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Ganti No. Whatsapp",
                      style: textTheme.caption!.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:darul_falah/core/commons/constants.dart';
import 'package:darul_falah/core/presentation/widgets/custom_button.dart';
import 'package:darul_falah/core/presentation/widgets/custom_text_field.dart';
import 'package:darul_falah/core/styles/text_theme.dart';
import 'package:flutter/material.dart';

class EditCardScreenBody extends StatelessWidget {
  EditCardScreenBody({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: basePadding,
        vertical: largePadding,
      ),
      child: SingleChildScrollView(
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
                    label: "Nama Anggota",
                  ),
                  const SizedBox(
                    height: basePadding,
                  ),
                  const CustomTextField(
                    label: "Angkatan",
                  ),
                  const SizedBox(
                    height: basePadding,
                  ),
                  const CustomTextField(
                    label: "Alamat",
                  ),
                   const SizedBox(
                    height: basePadding,
                  ),
                  const CustomTextField(
                    label: "No Telp",
                  ),
                  const SizedBox(
                    height: largePadding,
                  ),
                  CustomButton(
                    text: "Simpan",
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

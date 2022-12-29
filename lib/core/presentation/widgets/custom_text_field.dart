import 'package:darul_falah/core/commons/constants.dart';
import 'package:darul_falah/core/styles/text_theme.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.label,
    this.obsecureText = false,
    this.controller,
    this.keyboardType,
    this.textInputAction = TextInputAction.next,
    this.hint,
    this.enabledBorder,
    this.hintStyle,
    this.prefixIcon,
  });

  final String? label;
  final bool obsecureText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final TextInputAction textInputAction;
  final String? hint;
  final InputBorder? enabledBorder;
  final TextStyle? hintStyle;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        label != null
            ? Text(
                label!,
                style:
                    textTheme.subtitle1!.copyWith(fontWeight: FontWeight.bold),
              )
            : const SizedBox(),
        label != null
            ? const SizedBox(
                height: smallPading,
              )
            : const SizedBox(),
        TextFormField(
          keyboardType: keyboardType,
          textInputAction: textInputAction,
          controller: controller,
          cursorColor: violet[900],
          obscureText: obsecureText,
          validator: (String? value) {
            if (value == null || value.isEmpty) {
              return 'Pastikan data terisi dengan benar';
            }
            return null;
          },
          decoration: InputDecoration(
            prefixIcon: prefixIcon,
            hintText: hint,
            hintStyle: hintStyle,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: basePadding,
              vertical: smallPading,
            ),
            enabledBorder: enabledBorder,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
          ),
        ),
      ],
    );
  }
}

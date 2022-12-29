import 'package:darul_falah/core/styles/text_theme.dart';
import 'package:flutter/material.dart';

class CustomChip extends StatelessWidget {
  const CustomChip({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.color,
    this.icon,
    this.border,
    this.fontSize,
  });

  final String text;
  final Color backgroundColor;
  final Color color;
  final Icon? icon;
  final BoxBorder? border;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(5),
          border: border),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          icon ?? const SizedBox(),
          icon != null
              ? const SizedBox(
                  width: 6,
                )
              : const SizedBox(),
          Text(
            text,
            style: textTheme.caption!.copyWith(
              color: color,
              fontSize: fontSize,
            ),
          ),
        ],
      ),
    );
  }
}

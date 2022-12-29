import 'package:darul_falah/core/commons/constants.dart';
import 'package:flutter/material.dart';

class BaseAppBar extends StatelessWidget implements PreferredSize {
  final Widget? title;
  final Color? foregroundColor;
  final Color? backgroundColors;
  final List<Widget>? actions;

  const BaseAppBar({
    super.key,
    this.title,
    this.foregroundColor,
    this.backgroundColors,
    this.actions,
  });

  const BaseAppBar.light({
    super.key,
    this.title,
    this.actions,
  })  : foregroundColor = const Color(0xFF150d18),
        backgroundColors = Colors.white;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      foregroundColor: foregroundColor,
      backgroundColor: backgroundColors,
      elevation: 0,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget get child => throw UnimplementedError();
}

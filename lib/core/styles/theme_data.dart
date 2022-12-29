import 'package:darul_falah/core/commons/constants.dart';
import 'package:darul_falah/core/styles/text_theme.dart';
import 'package:flutter/material.dart';

final themeData = ThemeData(
    primaryColor: violet[400],
    appBarTheme: AppBarTheme(backgroundColor: violet[800]),
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.black,
      primary: violet[900]!,
    ),
    scaffoldBackgroundColor: Colors.white,
    textTheme: textTheme);

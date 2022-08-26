import 'package:flutter/material.dart';
import 'package:portfolio/theme/colors.dart';

final theme = ThemeData(
  // backgroundColor: background,
  scaffoldBackgroundColor: background,
  colorScheme: ColorScheme.fromSeed(
    seedColor: purple,
  ),
  inputDecorationTheme: const InputDecorationTheme(
    border: InputBorder.none,
    counterStyle: TextStyle(color: Colors.transparent),
    hintStyle: TextStyle(
      color: greyText,
    ),
  ),
);

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/theme/colors.dart';

final theme = ThemeData(
  // backgroundColor: background,
  scaffoldBackgroundColor: background,
  colorScheme: ColorScheme.fromSeed(
    seedColor: purple,
  ),
  textTheme: TextTheme(
    bodySmall: GoogleFonts.firaCode(
      fontSize: 16,
      color: const Color(0XFF5A5762),
    ),
    titleLarge: const TextStyle(
      fontFamily: "Cocogoose",
      fontWeight: FontWeight.normal,
      color: lightGrey,
      fontSize: 32,
    ),
    titleMedium: const TextStyle(
      fontFamily: "Cocogoose",
      fontWeight: FontWeight.w300,
      color: lightGrey,
      fontSize: 28,
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    border: InputBorder.none,
    counterStyle: TextStyle(color: Colors.transparent),
    hintStyle: TextStyle(
      color: greyText,
    ),
  ),
);

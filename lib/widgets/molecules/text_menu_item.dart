import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/theme/colors.dart';

class TextMenuItem extends StatelessWidget {
  const TextMenuItem({
    Key? key,
    required this.text,
    required this.onTap,
    this.active = false,
  }) : super(key: key);
  final bool active;
  final String text;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith(
          (states) => !active ? Colors.transparent : foreground01,
        ),
      ),
      child: Text(
        !active ? text : "> $text",
        style: GoogleFonts.openSans(
          fontWeight: FontWeight.w600,
          fontSize: 18,
          color: !active ? inactiveText : Colors.white,
        ),
      ),
    );
  }
}

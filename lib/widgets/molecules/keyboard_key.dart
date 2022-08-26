import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KeyBoardKey extends StatelessWidget {
  const KeyBoardKey({Key? key, required this.keyString}) : super(key: key);
  final String keyString;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 2,
        horizontal: 12,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          4,
        ),
        color: const Color(0XFF3F2D66),
      ),
      child: Text(
        keyString,
        style: GoogleFonts.openSans(
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

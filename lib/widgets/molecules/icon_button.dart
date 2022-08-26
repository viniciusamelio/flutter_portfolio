import 'package:flutter/material.dart';
import 'package:portfolio/theme/colors.dart';

class SquareIconButton extends StatelessWidget {
  const SquareIconButton({
    Key? key,
    required this.onPressed,
    required this.icon,
  }) : super(key: key);
  final VoidCallback onPressed;
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        padding: MaterialStateProperty.resolveWith(
          (states) => const EdgeInsets.all(16),
        ),
        backgroundColor: MaterialStateProperty.resolveWith(
          (states) => foreground01,
        ),
        foregroundColor: MaterialStateProperty.resolveWith(
          (states) => lightGrey,
        ),
        shape: MaterialStateProperty.resolveWith(
          (states) => RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      ),
      child: icon,
    );
  }
}

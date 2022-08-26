import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../theme/colors.dart';

class MenuTile extends StatelessWidget {
  const MenuTile({
    Key? key,
    required this.iconData,
    required this.label,
    required this.onTap,
    this.active = false,
  }) : super(key: key);

  final IconData iconData;
  final String label;
  final VoidCallback onTap;
  final bool active;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          textDirection: TextDirection.ltr,
          children: [
            Container(
              height: 40,
              width: 40,
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: foreground01,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Center(
                child: FaIcon(
                  iconData,
                  color: !active ? Colors.white : green,
                ),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              label,
              style: GoogleFonts.openSans(
                color: !active ? Colors.white : green,
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}

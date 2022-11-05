import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/theme/colors.dart';

import 'icon_button.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.title,
    required this.repositoryUrl,
    required this.image,
    this.projectUrl,
    this.footer,
  }) : super(key: key);

  final String title;
  final Widget image;
  final String repositoryUrl;
  final String? projectUrl;
  final Widget? footer;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 28,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: foreground02,
            border: Border.all(
              color: purple.withOpacity(.5),
            )),
        child: Column(
          children: [
            image,
            const SizedBox(height: 12),
            Text(
              title,
              style: _titleStyle,
            ),
            const SizedBox(height: 4),
            SquareIconButton(
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.github,
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextStyle get _titleStyle => GoogleFonts.firaCode(
        color: lightGrey,
        fontSize: 18,
        fontWeight: FontWeight.w700,
      );
}

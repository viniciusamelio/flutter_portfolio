import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/theme/colors.dart';

class TechCard extends StatelessWidget {
  const TechCard({
    Key? key,
    required this.title,
    required this.familiarityPercentage,
    required this.image,
    required this.knowledgePercentage,
  }) : super(key: key);

  final String title;
  final Widget image;
  final double familiarityPercentage;
  final double knowledgePercentage;

  @override
  Widget build(BuildContext context) {
    final mediaWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.all(16),
      width: mediaWidth < 768 ? mediaWidth : null,
      decoration: BoxDecoration(
        color: foreground02,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: _titleStyle,
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              image,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Familiaridade",
                    style: _labelStyle,
                  ),
                  _progressBar(familiarityPercentage),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Conhecimento",
                    style: _labelStyle,
                  ),
                  _progressBar(knowledgePercentage)
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _progressBar(double value) {
    return SizedBox(
      width: 80,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        child: LinearProgressIndicator(
          value: value / 100,
          backgroundColor: greyText,
          minHeight: 8,
          valueColor: const AlwaysStoppedAnimation<Color>(
            green,
          ),
        ),
      ),
    );
  }

  TextStyle get _titleStyle => GoogleFonts.firaCode(
        fontWeight: FontWeight.w500,
        color: lightGrey,
        fontSize: 22,
      );

  TextStyle get _labelStyle => GoogleFonts.firaCode(
        color: lightGrey,
        fontSize: 16,
      );
}

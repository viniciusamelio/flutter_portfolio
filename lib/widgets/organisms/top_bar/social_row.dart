import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../molecules/molecules.dart';

class SocialRow extends StatelessWidget {
  const SocialRow({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SquareIconButton(
          onPressed: () {},
          icon: const FaIcon(
            FontAwesomeIcons.linkedinIn,
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        SquareIconButton(
          onPressed: () {},
          icon: const FaIcon(
            FontAwesomeIcons.github,
          ),
        ),
      ],
    );
  }
}

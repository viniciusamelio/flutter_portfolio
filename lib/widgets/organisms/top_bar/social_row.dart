import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/infra/navigator/flutter_navigator.dart';

import '../../molecules/molecules.dart';

class SocialRow extends StatelessWidget {
  const SocialRow({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SquareIconButton(
          onPressed: () {
            VanillaNavigator().navigateToExternal(linkedinLink);
          },
          icon: const FaIcon(
            FontAwesomeIcons.linkedinIn,
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        SquareIconButton(
          onPressed: () {
            VanillaNavigator().navigateToExternal(githubLink);
          },
          icon: const FaIcon(
            FontAwesomeIcons.github,
          ),
        ),
      ],
    );
  }
}

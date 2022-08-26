import 'package:flutter/material.dart';
import 'package:portfolio/widgets/molecules/icon_button.dart';
import 'package:portfolio/widgets/organisms/menu/menu.dart';
import 'package:portfolio/widgets/organisms/top_bar/social_row.dart';
import 'package:portfolio/widgets/organisms/top_bar/top_bar_text_row.dart';

import '../../../theme/colors.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width < 1024) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SelectableText(
            "Vinicius Amélio",
            style: TextStyle(
              fontFamily: "Cocogoose",
              fontWeight: FontWeight.normal,
              color: purple,
              fontSize: 16,
            ),
          ),
          SquareIconButton(
            onPressed: () => Menu.show(context),
            icon: const Text("Ctrl M"),
          ),
        ],
      );
    }
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          SelectableText(
            "Vinicius Amélio",
            style: TextStyle(
              fontFamily: "Cocogoose",
              fontWeight: FontWeight.normal,
              color: purple,
              fontSize: 24,
            ),
          ),
          TopBarTextRow(),
          SocialRow(),
        ],
      ),
    );
  }
}

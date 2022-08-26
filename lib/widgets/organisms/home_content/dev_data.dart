import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/theme/colors.dart';
import 'package:portfolio/widgets/organisms/menu/menu.dart';

import '../../molecules/keyboard_key.dart';

class DevData extends StatelessWidget {
  const DevData({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.passthrough,
      children: [
        Positioned(
          top: 0,
          left: 30,
          child: Container(
            width: 82,
            height: 56,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: purple.withOpacity(.5)),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 30,
          child: Container(
            width: 82,
            height: 56,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color:
                  purple.withOpacity(MediaQuery.of(context).size.width >= 1024
                      ? .5
                      : MediaQuery.of(context).size.width >= 425
                          ? 1
                          : .2),
            ),
          ),
        ),
        Positioned(
          top: 12,
          right: 0,
          child: Container(
            width: 14,
            height: 56,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4), color: purple),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 2,
          child: Container(
            width: 14,
            height: 56,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: purple.withOpacity(.4)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Vinicius Amélio",
                style: TextStyle(
                  color: lightGrey,
                  fontSize: 48,
                  fontFamily: "Cocogoose",
                ),
              ),
              Text(
                "Desenvolvedor Web e Mobile",
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  color: const Color(0XFF75727D),
                ),
              ),
              Text(
                "Moro em Suzano, SP",
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.normal,
                  fontSize: 24,
                  color: const Color(0XFF5A5762),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const _MenuInstruction(),
            ],
          ),
        ),
      ],
    );
  }
}

class _MenuInstruction extends StatelessWidget {
  const _MenuInstruction({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: MediaQuery.of(context).size.width >= 1024,
      child: TextButton(
        onPressed: () {
          Menu.show(context);
        },
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Pressione",
              style: GoogleFonts.firaCode(
                fontSize: 16,
                color: const Color(0XFF5A5762),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            const KeyBoardKey(
              keyString: "Ctrl",
            ),
            const SizedBox(
              width: 6,
            ),
            const KeyBoardKey(
              keyString: "M",
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              "para ver o menu",
              style: GoogleFonts.firaCode(
                fontSize: 16,
                color: const Color(0XFF5A5762),
              ),
            )
          ],
        ),
      ),
    );
  }
}

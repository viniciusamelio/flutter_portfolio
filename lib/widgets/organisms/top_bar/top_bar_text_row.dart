import 'package:flutter/material.dart';
import 'package:portfolio/widgets/molecules/molecules.dart';

class TopBarTextRow extends StatelessWidget {
  const TopBarTextRow({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextMenuItem(
          text: "Serviços",
          onTap: () {},
        ),
        const SizedBox(
          width: 12,
        ),
        TextMenuItem(
          text: "Tecnologias",
          onTap: () {},
        ),
        const SizedBox(
          width: 12,
        ),
        TextMenuItem(
          text: "Experiência",
          onTap: () {},
        ),
      ],
    );
  }
}

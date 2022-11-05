import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/widgets/molecules/molecules.dart';
import 'package:portfolio/widgets/templates/templates.dart';

import '../widgets/organisms/organisms.dart';

class TechScreen extends StatelessWidget {
  const TechScreen({Key? key}) : super(key: key);

  static String route = "/tech";

  @override
  Widget build(BuildContext context) {
    Menu.enable(context);

    return ContentTemplate(
        title: "Tecnologias",
        description:
            "As tecnologias que utilizo ou já utilizei, tanto em projetos pessoais, freelas e/ou em empresas",
        content: [
          _mobile(context),
          const SizedBox(
            height: 40,
          ),
          _frontWeb(context),
          const SizedBox(
            height: 40,
          ),
          _backend(context),
          const SizedBox(
            height: 40,
          ),
          _database(context),
        ]);
  }

  Column _database(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Bancos de dados",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Wrap(
          spacing: 4,
          runSpacing: 8,
          children: [
            TechCard(
              title: "MySql",
              familiarityPercentage: 80,
              image: SvgPicture.asset(
                "assets/images/mysql 1.svg",
                height: 80,
                fit: BoxFit.scaleDown,
              ),
              knowledgePercentage: 70,
            ),
            TechCard(
              title: "MongoDB",
              familiarityPercentage: 70,
              image: SvgPicture.asset(
                "assets/images/mongodb 1.svg",
                fit: BoxFit.scaleDown,
                height: 80,
              ),
              knowledgePercentage: 60,
            ),
          ],
        ),
      ],
    );
  }

  Column _backend(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Back-end",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Wrap(
          spacing: 4,
          runSpacing: 8,
          children: [
            TechCard(
              title: "Dart",
              familiarityPercentage: 95,
              image: Image.asset(
                "assets/images/dart.png",
                height: 80,
              ),
              knowledgePercentage: 80,
            ),
            TechCard(
              title: "Node",
              familiarityPercentage: 90,
              image: SvgPicture.asset(
                "assets/images/node-js.svg",
                fit: BoxFit.contain,
                height: 80,
              ),
              knowledgePercentage: 65,
            ),
            TechCard(
              title: "Docker",
              familiarityPercentage: 80,
              image: SvgPicture.asset(
                "assets/images/docker.svg",
                fit: BoxFit.contain,
                height: 80,
              ),
              knowledgePercentage: 40,
            ),
          ],
        ),
      ],
    );
  }

  Column _frontWeb(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Front-end Web",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Wrap(
          spacing: 4,
          runSpacing: 8,
          children: [
            TechCard(
              title: "React",
              familiarityPercentage: 70,
              image: SvgPicture.asset(
                "assets/images/react.svg",
                fit: BoxFit.scaleDown,
                height: 80,
              ),
              knowledgePercentage: 55,
            ),
            TechCard(
              title: "Flutter",
              familiarityPercentage: 70,
              image: SvgPicture.asset(
                "assets/images/flutter.svg",
                fit: BoxFit.scaleDown,
                height: 80,
              ),
              knowledgePercentage: 80,
            ),
          ],
        ),
      ],
    );
  }

  Column _mobile(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Mobile",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        TechCard(
          title: "Flutter",
          familiarityPercentage: 95,
          image: SvgPicture.asset(
            "assets/images/flutter.svg",
            fit: BoxFit.scaleDown,
            height: 80,
          ),
          knowledgePercentage: 80,
        ),
      ],
    );
  }
}

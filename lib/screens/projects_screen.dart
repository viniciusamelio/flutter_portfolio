import 'package:flutter/material.dart';
import 'package:portfolio/widgets/molecules/molecules.dart';
import 'package:portfolio/widgets/organisms/organisms.dart';
import 'package:portfolio/widgets/templates/templates.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({Key? key}) : super(key: key);
  static String route = "/projects";
  @override
  Widget build(BuildContext context) {
    Menu.enable(context);

    final mediaQuery = MediaQuery.of(context);
    final mediaWidth = mediaQuery.size.width;
    final mediaHeight = mediaQuery.size.height;

    final double cardWidthConstraint = mediaWidth <= 425
        ? mediaWidth
        : mediaWidth >= 768
            ? 100
            : 60;
    final double cardHeightConstraint = mediaHeight >= 425 ? 100 : 80;
    return ContentTemplate(
      title: "Projetos",
      description:
          "Alguns projetos desenvolvidos por mim, utilizando algumas das tecnologias em destaque nesse portfólio. Selecione um para ver mais",
      content: [
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            ProjectCard(
              title: "Riven",
              repositoryUrl: "https://github.com/viniciusamelio/riven",
              projectUrl:
                  "https://drive.google.com/file/d/1KvOvX6U3YCR6bvn9KNbuIifqp_Y8gG9R/view",
              image: Image.network(
                "https://raw.githubusercontent.com/viniciusamelio/portfolio/main/public/riven.png",
                width: cardWidthConstraint,
                height: cardHeightConstraint,
              ),
            ),
            ProjectCard(
              title: "Scouter",
              repositoryUrl: "https://github.com/viniciusamelio/scouter",
              projectUrl: "https://pub.dev/packages/scouter",
              image: Image.network(
                "https://raw.githubusercontent.com/viniciusamelio/scouter/master/assets/logo.png",
                width: cardWidthConstraint,
                height: cardHeightConstraint,
              ),
            ),
            ProjectCard(
              title: "Pixel Tasks",
              repositoryUrl: "https://github.com/viniciusamelio/pixeltasks",
              projectUrl:
                  "https://drive.google.com/file/d/1qxJwlaVUzONS0lnoMIc-lapztK0rkwTY/view",
              image: Image.network(
                "https://raw.githubusercontent.com/viniciusamelio/portfolio/main/public/pixeltasks.png",
                width: cardWidthConstraint,
                height: cardHeightConstraint,
              ),
            ),
            ProjectCard(
              title: "Pixel Coders",
              repositoryUrl:
                  "https://github.com/viniciusamelio/pixelcoders-react",
              projectUrl: "https://pixelcoders-react.vercel.app/",
              image: Image.network(
                "https://raw.githubusercontent.com/viniciusamelio/portfolio/main/public/pixel.png",
                width: cardWidthConstraint,
                height: cardHeightConstraint,
              ),
            ),
            ProjectCard(
              title: "Biométricas",
              repositoryUrl: "https://github.com/viniciusamelio/biometricas",
              projectUrl:
                  "https://drive.google.com/file/d/155y9_F43xDOuX3xoYWs_sVlKQh48--5g/view",
              image: Image.network(
                "https://raw.githubusercontent.com/viniciusamelio/biometricas/master/mobile/assets/logo.png",
                height: cardHeightConstraint,
                width: cardWidthConstraint,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
          "Alguns projetos desenvolvidos por mim, utilizando algumas das tecnologias em destaque nesse portfólio",
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
              title: "Pixel Tasks",
              repositoryUrl: "https://github.com/viniciusamelio/riven",
              projectUrl:
                  "https://drive.google.com/file/d/1KvOvX6U3YCR6bvn9KNbuIifqp_Y8gG9R/view",
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
              repositoryUrl: "https://github.com/viniciusamelio/riven",
              projectUrl:
                  "https://drive.google.com/file/d/1KvOvX6U3YCR6bvn9KNbuIifqp_Y8gG9R/view",
              image: SvgPicture.network(
                "https://raw.githubusercontent.com/viniciusamelio/portfolio/88b5e4c39a5a1286c44854cf93376e105fddf53f/public/biometricas.svg",
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

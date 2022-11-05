import 'package:flutter/material.dart';
import 'package:portfolio/infra/navigator/flutter_navigator.dart';
import 'package:portfolio/screens/experience_screen.dart';
import 'package:portfolio/screens/projects_screen.dart';
import 'package:portfolio/screens/tech_screen.dart';
import 'package:portfolio/widgets/molecules/molecules.dart';

class TopBarTextRow extends StatelessWidget {
  const TopBarTextRow({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: VanillaNavigator.currentRoute,
        builder: (context, _, __) {
          return Row(
            children: [
              TextMenuItem(
                text: "Projetos",
                active:
                    VanillaNavigator.currentRoute.value == ProjectsScreen.route,
                onTap: () =>
                    VanillaNavigator().navigateTo(ProjectsScreen.route),
              ),
              const SizedBox(
                width: 12,
              ),
              TextMenuItem(
                text: "Tecnologias",
                active: VanillaNavigator.currentRoute.value == TechScreen.route,
                onTap: () => VanillaNavigator().navigateTo(TechScreen.route),
              ),
              const SizedBox(
                width: 12,
              ),
              TextMenuItem(
                text: "Experiência",
                onTap: () =>
                    VanillaNavigator().navigateTo(ExperienceScreen.route),
              ),
            ],
          );
        });
  }
}

import 'package:flutter/material.dart';
import 'package:portfolio/screens/experience_screen.dart';
import 'package:portfolio/screens/home_screen.dart';
import 'package:portfolio/screens/projects_screen.dart';
import 'package:portfolio/screens/tech_screen.dart';

abstract class CustomRouter {
  static Route<dynamic>? setup(RouteSettings settings) {
    final path = settings.name;
    if (routes.containsKey(path)) {
      return MaterialPageRoute(builder: (context) => routes[path]!);
    }
    return null;
  }

  static Map<String, Widget> routes = {
    "/": const HomeScreen(),
    ProjectsScreen.route: const ProjectsScreen(),
    TechScreen.route: const TechScreen(),
    ExperienceScreen.route: const ExperienceScreen(),
  };
}

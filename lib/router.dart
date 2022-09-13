import 'package:flutter/material.dart';
import 'package:portfolio/screens/home_screen.dart';

abstract class CustomRouter {
  static Route<dynamic>? setup(RouteSettings settings) {
    final path = settings.name;
    if (routes.containsKey(path)) {
      return MaterialPageRoute(builder: (context) => routes[path]!);
    }
  }

  static Map<String, Widget> routes = {
    "/": const HomeScreen(),
  };
}

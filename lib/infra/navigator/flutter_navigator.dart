import 'package:flutter/widgets.dart';
import 'package:portfolio/infra/navigator/navigator_service.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

class VanillaNavigator implements NavigatorService {
  static GlobalKey<NavigatorState> navigationKey = GlobalKey<NavigatorState>();

  NavigatorState get _navigator => Navigator.of(navigationKey.currentContext!);

  static String _lastPushedRoute = "/";
  static ValueNotifier<String> currentRoute = ValueNotifier("/");

  @override
  Future<void> navigateTo(String route) async {
    if (route != _lastPushedRoute) {
      _navigator.pushNamed(route);
      currentRoute.value = route;
      _lastPushedRoute = route;
    }
  }

  @override
  Future<void> pop() async => _navigator.pop();

  @override
  Future<void> navigateToExternal(String path) async {
    html.window.open(
      path,
      "_blank",
    );
  }
}

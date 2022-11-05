import 'package:flutter/widgets.dart';
import 'package:portfolio/infra/navigator/navigator_service.dart';

class VanillaNavigator implements NavigatorService {
  static GlobalKey<NavigatorState> navigationKey = GlobalKey<NavigatorState>();

  NavigatorState get _navigator => Navigator.of(navigationKey.currentContext!);

  static String _lastPushedRoute = "/";
  static String currentRoute = "/";

  @override
  Future<void> navigateTo(String route) async {
    if (route != _lastPushedRoute) {
      _navigator.pushNamed(route);
      currentRoute = route;
      _lastPushedRoute = route;
    }
  }

  @override
  Future<void> pop() async => _navigator.pop();
}

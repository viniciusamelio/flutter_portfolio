abstract class NavigatorService {
  Future<void> navigateTo(String route);
  Future<void> pop();
  Future<void> navigateToExternal(String path);
}

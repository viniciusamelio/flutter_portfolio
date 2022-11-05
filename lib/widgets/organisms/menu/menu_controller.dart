import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/infra/navigator/navigator_service.dart';
import 'package:portfolio/screens/experience_screen.dart';
import 'package:portfolio/screens/projects_screen.dart';
import 'package:portfolio/screens/tech_screen.dart';

import '../../../constants.dart';
import '../../../infra/navigator/flutter_navigator.dart';
import 'menu_item_dto.dart';
import 'menu_states.dart';

class MenuController extends ValueNotifier<MenuState> {
  MenuController({
    required this.navigatorService,
  }) : super(
          InitialMenuState(),
        ) {
    menuItems = [
      MenuItemDto(
        label: "Whatsapp",
        category: MenuItemCategory.social,
        iconData: FontAwesomeIcons.whatsapp,
        pressedCallback: () {
          VanillaNavigator().navigateToExternal(whatsAppLink);
        },
      ),
      MenuItemDto(
        label: "Instagram",
        category: MenuItemCategory.social,
        iconData: FontAwesomeIcons.instagram,
        pressedCallback: () {
          VanillaNavigator().navigateToExternal(instagramLink);
        },
      ),
      MenuItemDto(
        label: "Linkedin",
        category: MenuItemCategory.social,
        iconData: FontAwesomeIcons.linkedinIn,
        pressedCallback: () {
          VanillaNavigator().navigateToExternal(linkedinLink);
        },
      ),
      MenuItemDto(
        label: "Github",
        category: MenuItemCategory.social,
        iconData: FontAwesomeIcons.github,
        pressedCallback: () {
          VanillaNavigator().navigateToExternal(githubLink);
        },
      ),
      MenuItemDto(
        label: "Projetos",
        category: MenuItemCategory.site,
        iconData: FontAwesomeIcons.github,
        pressedCallback: () {
          _navigate(ProjectsScreen.route);
        },
      ),
      MenuItemDto(
        label: "Tecnologias",
        category: MenuItemCategory.site,
        iconData: FontAwesomeIcons.github,
        pressedCallback: () {
          _navigate(TechScreen.route);
        },
      ),
      MenuItemDto(
        label: "Experiência",
        category: MenuItemCategory.site,
        iconData: FontAwesomeIcons.github,
        pressedCallback: () {
          _navigate(ExperienceScreen.route);
        },
      ),
      MenuItemDto(
        label: "Home",
        category: MenuItemCategory.site,
        iconData: FontAwesomeIcons.github,
        pressedCallback: () {
          _navigate("/");
        },
      ),
    ];
  }

  final NavigatorService navigatorService;

  late final List<MenuItemDto> menuItems;

  void _navigate(String route) {
    navigatorService.navigateTo(route);
  }

  void search(String name) {
    final searchResult = menuItems
        .where(
          (item) => item.label.toLowerCase().contains(name.toLowerCase()),
        )
        .toList();
    if (searchResult.isEmpty) {
      value = NotFoundMenuState();
      return notifyListeners();
    }
    value = FoundMenuState(
      searchResult,
    );
    return notifyListeners();
  }
}

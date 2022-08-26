import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'menu_item_dto.dart';
import 'menu_states.dart';

class MenuController extends ValueNotifier<MenuState> {
  MenuController()
      : super(
          InitialMenuState(),
        );

  final List<MenuItemDto> menuItems = [
    MenuItemDto(
      label: "Whatsapp",
      category: MenuItemCategory.social,
      iconData: FontAwesomeIcons.whatsapp,
      pressedCallback: () {},
    ),
    MenuItemDto(
      label: "Instagram",
      category: MenuItemCategory.social,
      iconData: FontAwesomeIcons.instagram,
      pressedCallback: () {},
    ),
    MenuItemDto(
      label: "Linkedin",
      category: MenuItemCategory.social,
      iconData: FontAwesomeIcons.linkedinIn,
      pressedCallback: () {},
    ),
    MenuItemDto(
      label: "Github",
      category: MenuItemCategory.social,
      iconData: FontAwesomeIcons.github,
      pressedCallback: () {},
    ),
    MenuItemDto(
      label: "Serviços",
      category: MenuItemCategory.site,
      iconData: FontAwesomeIcons.github,
      pressedCallback: () {},
    ),
    MenuItemDto(
      label: "Tecnologias",
      category: MenuItemCategory.site,
      iconData: FontAwesomeIcons.github,
      pressedCallback: () {},
    ),
    MenuItemDto(
      label: "Experiência",
      category: MenuItemCategory.site,
      iconData: FontAwesomeIcons.github,
      pressedCallback: () {},
    ),
    MenuItemDto(
      label: "Home",
      category: MenuItemCategory.site,
      iconData: FontAwesomeIcons.github,
      pressedCallback: () {},
    ),
  ];

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

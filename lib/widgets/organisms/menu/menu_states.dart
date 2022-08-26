import 'menu_item_dto.dart';

abstract class MenuState {}

class InitialMenuState extends MenuState {}

class FoundMenuState extends MenuState {
  FoundMenuState(this.value);
  final List<MenuItemDto> value;
}

class NotFoundMenuState extends MenuState {}

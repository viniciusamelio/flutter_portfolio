import 'package:flutter/widgets.dart';

enum MenuItemCategory {
  social,
  site,
}

class MenuItemDto {
  MenuItemDto({
    required this.label,
    required this.category,
    required this.iconData,
    required this.pressedCallback,
  });

  final String label;
  final MenuItemCategory category;
  final IconData iconData;
  final VoidCallback pressedCallback;
}

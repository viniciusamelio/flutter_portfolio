import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:glassy/glassy_config.dart';
import 'package:glassy/glassy_dialog.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/infra/navigator/flutter_navigator.dart';
import 'package:portfolio/widgets/organisms/menu/menu_controller.dart';
import 'package:portfolio/widgets/organisms/menu/menu_states.dart';

import '../../../theme/colors.dart';
import '../../molecules/molecules.dart';
import 'menu_item_dto.dart';

class Menu extends StatelessWidget {
  Menu({Key? key}) : super(key: key);

  final MenuController menuController = MenuController(
    navigatorService: VanillaNavigator(),
  );
  final TextEditingController searchFieldController = TextEditingController();
  final FocusNode searchFocus = FocusNode();
  static void enable(BuildContext context) {
    final List<String> pressedKeys = [];

    RawKeyboard.instance.addListener((e) {
      if (e.physicalKey.debugName == "Control Left" ||
          e.physicalKey.debugName == "Control Right") {
        return pressedKeys.add("Control");
      } else if (e.physicalKey.debugName == "Key M" &&
          pressedKeys.contains("Control")) {
        if (ModalRoute.of(context)?.isCurrent == true) {
          Menu.show(context);
        }
        return pressedKeys.clear();
      }
      pressedKeys.clear();
    });
  }

  static show(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => Menu(),
    );
  }

  @override
  Widget build(BuildContext context) {
    searchFocus.requestFocus();
    return GlassyDialog(
      config: GlassyConfig(
        backgroundColor: purple,
        backgroundOpacity: .08,
        borderOpacity: .2,
        radius: 4,
      ),
      closeButton: false,
      size: Size(
        MediaQuery.of(context).size.width * .6,
        600,
      ),
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: Column(
            textDirection: TextDirection.ltr,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                textDirection: TextDirection.ltr,
                controller: searchFieldController,
                onChanged: (value) => menuController.search(value),
                focusNode: searchFocus,
                maxLength: 15,
                style: const TextStyle(
                  color: Colors.white,
                ),
                decoration: const InputDecoration(
                  hintTextDirection: TextDirection.ltr,
                  hintText: "Comece a digitar...",
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              ValueListenableBuilder(
                valueListenable: menuController,
                builder: (context, state, child) {
                  if (state is NotFoundMenuState) {
                    return Container();
                  }
                  return Text(
                    "Social",
                    style: GoogleFonts.firaCode(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 12,
              ),
              ValueListenableBuilder(
                valueListenable: menuController,
                builder: (context, state, widget) {
                  if (state is NotFoundMenuState) {
                    return Container();
                  } else if (state is InitialMenuState) {
                    return Column(
                      children: menuController.menuItems
                          .where(
                            (element) =>
                                element.category == MenuItemCategory.social,
                          )
                          .map<Widget>(
                            (e) => MenuTile(
                              iconData: e.iconData,
                              label: e.label,
                              onTap: e.pressedCallback,
                            ),
                          )
                          .toList(),
                    );
                  }

                  return Column(
                    children: (state as FoundMenuState)
                        .value
                        .where(
                          (element) =>
                              element.category == MenuItemCategory.social,
                        )
                        .map<Widget>(
                          (e) => MenuTile(
                            iconData: e.iconData,
                            label: e.label,
                            onTap: e.pressedCallback,
                          ),
                        )
                        .toList(),
                  );
                },
              ),
              const SizedBox(
                height: 6,
              ),
              ValueListenableBuilder(
                valueListenable: menuController,
                builder: (context, state, child) {
                  if (state is! NotFoundMenuState) {
                    return Divider(
                      color: greyText.withOpacity(.5),
                    );
                  }

                  return Text(
                    "Comando não encontrado:${searchFieldController.text}",
                    style: GoogleFonts.firaCode(
                      color: lightGrey,
                      fontSize: 16,
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 6,
              ),
              ValueListenableBuilder(
                valueListenable: menuController,
                builder: (context, state, child) {
                  if (state is NotFoundMenuState) {
                    return Container();
                  }
                  return Text(
                    "Site",
                    style: GoogleFonts.firaCode(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 12,
              ),
              ValueListenableBuilder(
                valueListenable: menuController,
                builder: (context, state, widget) {
                  if (state is NotFoundMenuState) {
                    return Container();
                  } else if (state is InitialMenuState) {
                    return Column(
                      children: menuController.menuItems
                          .where(
                            (element) =>
                                element.category == MenuItemCategory.site,
                          )
                          .map<Widget>(
                            (e) => MenuTile(
                              iconData: e.iconData,
                              label: e.label,
                              onTap: e.pressedCallback,
                            ),
                          )
                          .toList(),
                    );
                  }

                  return Column(
                    children: (state as FoundMenuState)
                        .value
                        .where(
                          (element) =>
                              element.category == MenuItemCategory.site,
                        )
                        .map<Widget>(
                          (e) => MenuTile(
                            iconData: e.iconData,
                            label: e.label,
                            onTap: e.pressedCallback,
                          ),
                        )
                        .toList(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

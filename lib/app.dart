import 'package:flutter/material.dart';
import 'package:portfolio/router.dart';
import 'package:portfolio/theme/theme.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: theme,
        title: "Vinicius Amélio",
        onGenerateRoute: CustomRouter.setup);
  }
}

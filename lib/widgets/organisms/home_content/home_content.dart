import 'package:flutter/material.dart';
import 'package:portfolio/widgets/organisms/home_content/dev_data.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width < 1024) {
      return const DevData();
    }
    return Row(
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width - 80,
          ),
          child: const DevData(),
        ),
      ],
    );
  }
}

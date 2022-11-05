import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../organisms/organisms.dart';

class ContentTemplate extends StatelessWidget {
  const ContentTemplate({
    Key? key,
    required this.title,
    required this.description,
    required this.content,
  }) : super(key: key);

  final String title;
  final String description;
  final List<Widget> content;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          vertical: 36,
          horizontal: MediaQuery.of(context).size.width >= 1024 ? 60 : 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TopBar(),
            const SizedBox(
              height: 92,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              description,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(
              height: 24,
            ),
            ...content,
            const SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}

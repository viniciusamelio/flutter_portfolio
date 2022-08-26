import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/theme/colors.dart';

import '../widgets/organisms/organisms.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Menu.enable(context);
    return Scaffold(
      body: Stack(
        children: [
          Opacity(
            opacity: .02,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/bg.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: -200,
            left: -200,
            child: Container(
              height: 400,
              width: 400,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 24, 22, 34),
              ),
            ),
          ),
          Visibility(
            visible: MediaQuery.of(context).size.width >= 1024,
            replacement: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
            child: const Content(),
          ),
          Positioned(
            bottom: -100,
            right: -120,
            child: Container(
              height: 520,
              width: 520,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 24, 22, 34),
              ),
            ),
          ),
          Positioned(
            bottom: 200,
            right: 100,
            child: Container(
              height: 320,
              width: 320,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 24, 22, 34),
              ),
            ),
          ),
          Positioned(
            bottom: 360,
            right: 60,
            child: TechBubble(
              height: 125,
              width: 125,
              child: SvgPicture.asset(
                "assets/images/react.svg",
                fit: BoxFit.scaleDown,
                height: 20,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              "assets/images/me.png",
              scale: 1.2,
              filterQuality: FilterQuality.high,
            ),
          ),
          Positioned(
            bottom: -40,
            right: 290,
            child: TechBubble(
              height: 210,
              width: 210,
              child: SvgPicture.asset(
                "assets/images/flutter.svg",
                fit: BoxFit.scaleDown,
                height: 20,
              ),
            ),
          ),
          Positioned(
            bottom: 280,
            right: 30,
            child: TechBubble(
              height: 80,
              width: 80,
              backgroundColor: const Color(0XFF0E0C14),
              child: SvgPicture.asset(
                "assets/images/mongodb 1.svg",
                fit: BoxFit.scaleDown,
                height: 20,
              ),
            ),
          ),
          Positioned(
            bottom: 400,
            right: 300,
            child: TechBubble(
              height: 80,
              width: 80,
              backgroundColor: const Color(0XFF191622),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  "assets/images/node-js.svg",
                  fit: BoxFit.contain,
                  cacheColorFilter: true,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 510,
            right: 200,
            child: TechBubble(
              height: 90,
              width: 90,
              child: SvgPicture.asset(
                "assets/images/mysql 1.svg",
                fit: BoxFit.scaleDown,
                height: 15,
              ),
            ),
          ),
          Positioned(
            bottom: 530,
            right: 350,
            child: TechBubble(
              height: 70,
              width: 70,
              child: SvgPicture.asset(
                "assets/images/docker.svg",
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
          Visibility(
            visible: MediaQuery.of(context).size.width < 1024,
            child: Container(
              color: Colors.black.withOpacity(.75),
              child: const Content(),
            ),
          )
        ],
      ),
    );
  }
}

class Content extends StatelessWidget {
  const Content({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          vertical: 36,
          horizontal: MediaQuery.of(context).size.width >= 1024 ? 60 : 24,
        ),
        child: Column(
          children: [
            const TopBar(),
            SizedBox(
              height: MediaQuery.of(context).size.width >= 1024
                  ? MediaQuery.of(context).size.height * .35
                  : MediaQuery.of(context).size.height * .25,
            ),
            const HomeContent()
          ],
        ),
      ),
    );
  }
}

class TechBubble extends StatefulWidget {
  const TechBubble({
    Key? key,
    required this.child,
    required this.height,
    required this.width,
    this.backgroundColor = foreground01,
  }) : super(key: key);
  final Widget child;
  final double height;
  final double width;
  final Color backgroundColor;

  @override
  State<TechBubble> createState() => _TechBubbleState();
}

class _TechBubbleState extends State<TechBubble> {
  late double sizeMultiplier;

  late Color backgroundColor;

  @override
  void initState() {
    backgroundColor = widget.backgroundColor;
    sizeMultiplier = 1;

    Timer.periodic(const Duration(seconds: 3), (timer) {
      sizeMultiplier = Random().nextDouble();
      if (sizeMultiplier < .75) {
        sizeMultiplier = .75;
      }
      setState(() {
        sizeMultiplier;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: widget.height * sizeMultiplier,
      width: widget.width * sizeMultiplier,
      duration: const Duration(
        milliseconds: 800,
      ),
      curve: Curves.elasticInOut,
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.circle,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: widget.child,
      ),
    );
  }
}

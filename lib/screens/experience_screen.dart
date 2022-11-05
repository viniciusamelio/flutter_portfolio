import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/theme/colors.dart';

import 'package:portfolio/widgets/templates/templates.dart';

import '../widgets/organisms/organisms.dart';

class ExperienceScreen extends StatelessWidget {
  const ExperienceScreen({Key? key}) : super(key: key);
  static String route = "/cv";

  @override
  Widget build(BuildContext context) {
    Menu.enable(context);
    return ContentTemplate(
      title: "Experiência profissional",
      description:
          "Empresas pelas quais passei ao longo da minha carreira, compondo minha trajetória como dev",
      content: [
        const SizedBox(
          height: 20,
        ),
        _cubosTecnologia(),
        const SizedBox(
          height: 24,
        ),
        _kangu(),
        const SizedBox(
          height: 24,
        ),
        _virtus(),
      ],
    );
  }

  Widget _cubosTecnologia() {
    return const _CareerStep(
      companyName: "Cubos tecnologia",
      fromTo: "02/2022 - Atualmente",
      description: """
Atuando com desenvolvimento multiplataforma com Dart e Flutter, com foco em ambientes Mobile Android e iOS. Priorizando conceitos de arquitetura limpa e práticas SOLID, familiarizado com ambientes cloud para infraestrutura, tais como Google Firebase e Supabase. Utilizando recursos de monitoramento de aplicações tais como Google Crashlytics. Grande utilização de recursos para facilitação de comunicação entre área de negócios e tecnologia, assim como o Gherkin para escrita de cenários de testes em conjunto com TDD. Criação de packages modulares e arquiteturais para projetos escaláveis. Utilizando também do Scrum em projetos nos quais me envolvi.""",
      rank: _Level.mid,
      roleName: "Desenvolvedor Flutter",
    );
  }

  Widget _kangu() {
    return const _CareerStep(
      companyName: "Kangu Transportes",
      fromTo: "03/2021 - 02/2022",
      description: """
Atuando com desenvolvimento front e backend, num ecossistema PHP com Zend, HTML, CSS e JS. Desenvolvimento mobile com Flutter. Além do uso de metodologias ágeis, tal como Scrum.""",
      rank: _Level.low,
      roleName: "Desenvolvedor Fullstack",
    );
  }

  Widget _virtus() {
    return Column(
      children: const [
        _CareerStep(
          companyName: "VirtusPay",
          fromTo: "10/2020 - 02/2021",
          description: """
Foco em desenvolvimento mobile (Android e iOS) com Flutter. Desenvolvendo sistemas front-end com ReactJS. Manutenção e elaboração de API’s e serviços com Python e Django.
""",
          rank: _Level.low,
          roleName: "Desenvolvedor Front-end",
        ),
        _CareerStep(
          companyName: "VirtusPay",
          fromTo: "07/2019 - 10/2020",
          description: """
Atuando com desenvolvimento web, utilizando HTML, CSS e Javascript, num ambiente Python, utilizando Django. Realizando a criação de landing pages e módulos administrativos. Manipulação de Views e Models, além da criação de recursos REST para API. Desenvolvimento mobile com Flutter e elaboração de web app com React.
""",
          rank: _Level.intern,
          roleName: "Desenvolvedor Front-end",
        )
      ],
    );
  }
}

class _CareerStep extends StatelessWidget {
  const _CareerStep({
    Key? key,
    required this.companyName,
    required this.fromTo,
    required this.description,
    required this.rank,
    required this.roleName,
  }) : super(key: key);

  final String companyName;
  final String fromTo;
  final String description;
  final _Level rank;
  final String roleName;

  @override
  Widget build(BuildContext context) {
    final mediaWidth = MediaQuery.of(context).size.width;
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: mediaWidth > 768 ? mediaWidth / 2 : mediaWidth,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Text(
                companyName,
                style: companyStyle,
              ),
              const SizedBox(width: 48),
              Text(
                fromTo,
                style: fromToStyle,
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: badgeFromLevel(rank),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            description,
            style: descriptionStyle,
          )
        ],
      ),
    );
  }

  TextStyle get companyStyle => GoogleFonts.firaCode(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: lightGrey,
      );

  TextStyle get descriptionStyle => GoogleFonts.firaCode(
        fontSize: 16,
        fontWeight: FontWeight.w300,
        color: lightGrey,
      );

  TextStyle get fromToStyle => GoogleFonts.firaCode(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: inactiveText,
      );

  Widget badgeFromLevel(_Level level) {
    final Text label = (level == _Level.low
        ? Text(
            "👦 Júnior",
            style: badgeLabelStyle,
          )
        : level == _Level.mid
            ? Text(
                "🧔 Pleno",
                style: badgeLabelStyle,
              )
            : Text(
                "👶 Estagiário",
                style: badgeLabelStyle,
              ));

    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(
            16,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: foreground02,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              label,
            ],
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Text(
          roleName,
          style: fromToStyle.copyWith(
              fontSize: 16, color: purple.withOpacity(.75)),
        )
      ],
    );
  }

  TextStyle get badgeLabelStyle => GoogleFonts.firaCode(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: purple,
      );
}

enum _Level {
  low,
  mid,
  intern,
}

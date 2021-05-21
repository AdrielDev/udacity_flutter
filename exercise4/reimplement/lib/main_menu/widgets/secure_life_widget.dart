import 'package:flutter/material.dart';
import 'package:reimplement/main_menu/widgets/card_default_widget.dart';

class SecureLifeWidget extends StatelessWidget {
  const SecureLifeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CardDefaultWidget(
          iconCard: Icons.adb_sharp,
          titleCard: 'Seguro de Vida',
          description:
              'Conheça Nubank Vida: um seguro simples e que cabe no bolso.'),
    );
  }
}

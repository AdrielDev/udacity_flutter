import 'package:flutter/material.dart';
import '../../utils/utils.dart';

class CardCreditWidget extends StatelessWidget {
  const CardCreditWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _columnMain = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.card_membership),
            SizedBox(
              width: 10,
            ),
            Text(
              "Cartão de Crédito",
              style: Theme.of(context).textTheme.headline2,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            "Fatura atual",
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
        Text(
          "R\$ 484,58",
          style: TextStyle(
              fontSize: 24, color: Colors.blue, fontWeight: FontWeight.bold),
        ),
        RichText(
          text: TextSpan(
            text: 'Limite disponível ',
            style: DefaultTextStyle.of(context).style,
            children: const <TextSpan>[
              TextSpan(
                text: 'R\$ 1.158,14',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
              ),
            ],
          ),
        )
      ],
    );

    return Utils.containerMain(_columnMain);
  }
}

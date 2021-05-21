import 'package:flutter/material.dart';
import '../../utils/utils.dart';

class AccountBalanceWidget extends StatelessWidget {
  const AccountBalanceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _columnMain = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.money_off_csred),
            SizedBox(
              width: 10,
            ),
            Text(
              "Conta",
              style: Theme.of(context).textTheme.headline2,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text("Saldo disponível"),
        ),
        Text(
          "R\$ 220,29",
          style: TextStyle(
            fontSize: 24,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );

    return Utils.containerMain(_columnMain);
  }
}

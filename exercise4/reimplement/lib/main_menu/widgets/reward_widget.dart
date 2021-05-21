import 'package:flutter/material.dart';
import 'card_default_widget.dart';

class RewardWidget extends StatelessWidget {
  const RewardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CardDefaultWidget(
        iconCard: Icons.card_giftcard,
        titleCard: 'Reward',
        description: 'Apague compras com pontos que nunca expiram.');
  }
}

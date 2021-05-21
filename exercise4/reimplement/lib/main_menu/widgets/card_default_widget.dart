import 'package:flutter/material.dart';
import 'package:reimplement/utils/utils.dart';

class CardDefaultWidget extends StatelessWidget {
  final IconData iconCard;
  final String titleCard;
  final String description;
  const CardDefaultWidget({
    Key? key,
    required this.iconCard,
    required this.titleCard,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _columnMain = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              child: Icon(iconCard),
              backgroundColor: Colors.purple[200],
              foregroundColor: Colors.purple[700],
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              titleCard,
              style: Theme.of(context).textTheme.headline1,
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Text(description),
        ),
        OutlinedButton(
          onPressed: () => print("Fui tapeado"),
          child: Text(
            "CONHECER",
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
          ),
          style: OutlinedButton.styleFrom(
              primary: Colors.purple, side: BorderSide(color: Colors.purple)),
        )
      ],
    );
    return Container(
      child: Utils.containerMain(_columnMain),
    );
  }
}

import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final IconData iconCard;
  final String titleCard;
  const CardWidget({
    Key? key,
    required this.iconCard,
    required this.titleCard,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.purple[500],
        borderRadius: BorderRadius.circular(5),
      ),
      width: 68,
      height: 55,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            iconCard,
            color: Colors.white,
            size: 20,
          ),
          Text(
            titleCard,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}

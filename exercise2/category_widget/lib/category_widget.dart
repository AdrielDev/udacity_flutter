import 'package:flutter/material.dart';

final _rowHeight = 100.0;
final _borderRadius = BorderRadius.circular(_rowHeight / 2);

class CategoryWidget extends StatelessWidget {
  final IconData categoryIcon;
  final ColorSwatch categoryColor;
  final String categoryName;

  const CategoryWidget({
    Key? key,
    required this.categoryIcon,
    required this.categoryColor,
    required this.categoryName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () => print('I was tapped'),
        highlightColor: categoryColor,
        splashColor: categoryColor,
        borderRadius: _borderRadius,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 100,
                child: Icon(
                  categoryIcon,
                  size: 60.0,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "Cake",
                  style: TextStyle(fontSize: 24.0),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

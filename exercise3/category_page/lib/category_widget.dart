import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final IconData categoryIcon;
  final String categoryName;
  final ColorSwatch categoryColor;

  const CategoryWidget({
    Key? key,
    required this.categoryIcon,
    required this.categoryName,
    required this.categoryColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        borderRadius: BorderRadius.circular(40.0),
        highlightColor: categoryColor,
        splashColor: categoryColor,
        onTap: () => print("Fui tapeado!"),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Container(
                  child: Icon(
                    categoryIcon,
                    size: 60,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    categoryName,
                    style: TextStyle(
                      fontSize: 27,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

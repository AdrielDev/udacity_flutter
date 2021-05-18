import 'package:flutter/material.dart';
import './category_widget.dart';

const _categoryIcon = Icons.cake;
const _categoryColor = Colors.green;
const _categoryName = "Cake";

void main() {
  runApp(UnitConverterApp());
}

class UnitConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unit Converter',
      home: Scaffold(
        backgroundColor: Colors.green[100],
        body: CategoryWidget(
          categoryIcon: _categoryIcon,
          categoryColor: _categoryColor,
          categoryName: _categoryName,
        ),
      ),
    );
  }
}

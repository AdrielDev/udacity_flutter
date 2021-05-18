import 'package:category_widget/category_page.dart';
import 'package:category_widget/category_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(UnitConverter());
}

class UnitConverter extends StatelessWidget {
  const UnitConverter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Unit Converter",
      home: CategoryPage(),
    );
  }
}

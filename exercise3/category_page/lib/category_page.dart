import 'package:category_widget/category_widget.dart';
import 'package:flutter/material.dart';

const _categoryNames = <String>[
  'Length',
  'Area',
  'Volume',
  'Mass',
  'Time',
  'Digital Storage',
  'Energy',
  'Currency',
];

const _baseColors = <ColorSwatch>[
  Colors.teal,
  Colors.orange,
  Colors.pinkAccent,
  Colors.blueAccent,
  Colors.yellow,
  Colors.greenAccent,
  Colors.purpleAccent,
  Colors.red,
];

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Unit Converter",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
        ),
        backgroundColor: Colors.green[300],
      ),
      body: ListView.builder(
        itemCount: _categoryNames.length,
        itemBuilder: (ctx, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: CategoryWidget(
                categoryIcon: Icons.cake,
                categoryName: _categoryNames[index],
                categoryColor: _baseColors[index]),
          );
        },
      ),
      backgroundColor: Colors.green[100],
    );
  }
}

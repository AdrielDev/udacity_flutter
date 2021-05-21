import 'package:flutter/material.dart';
import 'package:reimplement/main_menu/page/menu_page.dart';
import 'package:reimplement/utils/custom_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clone Main Page nuBank',
      theme: CustomTheme.lightTheme,
      home: MenuPage(),
    );
  }
}

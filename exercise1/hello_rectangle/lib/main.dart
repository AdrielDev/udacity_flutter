import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello Rectangle',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HelloRectangle(),
    );
  }
}

class HelloRectangle extends StatelessWidget {
  const HelloRectangle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Rectangle"),
      ),
      body: Center(
        child: Container(
          height: 400,
          width: 250,
          color: Colors.greenAccent,
          child: Center(
            child: Text(
              "Hello",
              style: TextStyle(fontSize: 40),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

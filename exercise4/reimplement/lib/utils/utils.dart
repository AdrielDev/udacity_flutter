import 'package:flutter/material.dart';

class Utils {
  static Widget containerMain(child) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Colors.white,
      ),
      padding: EdgeInsets.all(15),
      child: child,
    );
  }
}

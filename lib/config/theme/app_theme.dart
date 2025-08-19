import 'package:flutter/material.dart';


const colorList = <Color>[
  Colors.blue,
  Colors.red,
  Colors.green,
  Colors.yellow,
  Colors.purple, 
  Colors.orange,
  Colors.cyan,
  Colors.pink,
  Colors.teal,
];

class AppTheme {
  final int selectedColor;

  AppTheme({
    this.selectedColor= 0
  }): assert(selectedColor >= 0 && selectedColor < colorList.length, 'Selected color must be greater than of 0'); // avoid selection out of list bounds


  ThemeData getTheme()=> ThemeData(
    useMaterial3: true,
    colorSchemeSeed:   colorList[selectedColor],
    appBarTheme: AppBarTheme(
      centerTitle: true,
    ),
  );
}
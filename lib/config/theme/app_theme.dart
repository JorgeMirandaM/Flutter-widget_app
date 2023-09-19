import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.deepPurple,
  Colors.orange,
  Colors.pink
];

class AppTheme {
  final int selectColor;

  AppTheme({this.selectColor = 0})
      : assert(selectColor >= 0, 'Selected color must be greater than 0'),
        assert(selectColor < colorList.length,
            'Selected color must be less or equal than ${colorList.length - 1}');

  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: colorList[selectColor],
        appBarTheme: AppBarTheme(centerTitle: false)
      );
}

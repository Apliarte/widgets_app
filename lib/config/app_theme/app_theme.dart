import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.red,
  Colors.green,
  Colors.purple,
  Colors.orange,
  Colors.teal,
  Colors.pink,
  Colors.amber,
  Colors.brown,
  Colors.cyan,
  Colors.deepOrange,
  Colors.deepPurple,
  Colors.indigo,
  Colors.lime,
  Colors.yellow,
];

class AppTheme {
  // cambia el color de fondo por uno aleatorio

  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0, 'Selecciona un color mas alto que 0'),
        assert(selectedColor < colorList.length,
            'Selecciona un color mas bajo que${colorList.length}');

  ThemeData getTheme() => ThemeData(
    brightness: Brightness.light,
        useMaterial3: true,
        colorSchemeSeed: colorList[selectedColor],
        appBarTheme: const AppBarTheme(
          centerTitle: true,
        ),
      );
}

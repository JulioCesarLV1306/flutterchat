import 'package:flutter/material.dart';

const Color _customColor = Color.fromARGB(183, 205, 221, 210);
const List<Color> _colorTheme = [
  _customColor,
  Color.fromARGB(85, 33, 149, 243),
  Color.fromARGB(255, 239, 255, 253),
  Colors.amber,
  Colors.red,
  Colors.black,
  Colors.orange,
];

class AppTheme {
  final int selectColor;
  AppTheme({this.selectColor = 0})
      : assert(selectColor >= 0 && selectColor <= 6,
            'El numero tiene que estrar entre 0 y ${_colorTheme.length}');

  ThemeData theme() {
    return ThemeData(
        // brightness: Brightness.dark,
        useMaterial3: true,
        colorSchemeSeed: _colorTheme[selectColor]);
  }
}

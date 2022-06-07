import 'package:flutter/material.dart';

class LightTheme {
  final _lightColors = _LightColors();

  late ThemeData theme;

  LightTheme() {
    theme = ThemeData(
      floatingActionButtonTheme:
          FloatingActionButtonThemeData(backgroundColor: Colors.green),
      textTheme: ThemeData.light().textTheme.copyWith(
            subtitle1: TextStyle(fontSize: 25, color: _lightColors._porsche),
          ),
    );
  }
}

class _LightColors {
  final Color _porsche = Color.fromARGB(237, 153, 97, 0);
}
  
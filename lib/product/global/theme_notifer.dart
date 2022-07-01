import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/thema/light_theme.dart';

class ThemeNotifer extends ChangeNotifier {
  bool isLightTheme = false;

  void changeTheme() {
    isLightTheme = !isLightTheme;
    notifyListeners();
  }

  ThemeData get currentTheme =>
      isLightTheme ? LightTheme().theme : ThemeData.dark();
}

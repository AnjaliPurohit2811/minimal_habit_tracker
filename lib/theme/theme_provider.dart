import 'package:flutter/material.dart';
import 'package:minimal_habit_tracker/theme/dark_theme.dart';
import 'package:minimal_habit_tracker/theme/light_mode.dart';

class ThemeProvider extends ChangeNotifier {
  // initially light mode

  ThemeData _themeData = lightTheme;

  // get current theme

  ThemeData get themeData => _themeData;

  // is current theme dark theme

  bool get isDarkMode => _themeData == darkTheme;

  // set theme

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  // toggle theme

  void toggleTheme() {
    if (_themeData == lightTheme) {
      themeData = darkTheme;
    } else {
      themeData = lightTheme;
    }

  }
}

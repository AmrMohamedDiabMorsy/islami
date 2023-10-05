import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  ThemeMode theme = ThemeMode.light;
  String local = "en";

  changTheme(ThemeMode mode) {
    theme = mode;
    notifyListeners();
  }

  changeLanguage(String langcode) {
    local = langcode;
    notifyListeners();
  }
}

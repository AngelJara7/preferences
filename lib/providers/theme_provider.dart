import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {

  ThemeData currentData;

  ThemeProvider({
    required bool isDarkmode
  }): currentData = isDarkmode ? ThemeData.dark() : ThemeData.light();

  setLightMode() {
    currentData = ThemeData.light();
    notifyListeners();
  }

  setDarkMode() {
    currentData = ThemeData.dark();
    notifyListeners();
  }
}
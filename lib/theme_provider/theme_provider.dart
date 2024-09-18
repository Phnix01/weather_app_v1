import 'package:flutter/material.dart';
import 'package:weather_app_v1/theme/theme.dart';

class ThemeProvider with ChangeNotifier {
  bool _isSelect = false;
  bool get isSelect => _isSelect;
  ThemeData _themeData = lightMode;
  ThemeData get themeData => _themeData;

  void toggleTheme() {
    if (_themeData == lightMode) {
      _themeData = darkMode;
    } else {
      _themeData = lightMode;
    }
    _isSelect = !_isSelect;
    notifyListeners();
  }
}

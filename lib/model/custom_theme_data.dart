import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:theme_data/shared/custom_theme.dart';

class CustomThemeDataModel extends ChangeNotifier {
  ThemeData _themeData = myTheme;

  //
  /// yukarıdaki private döndürüyoruz
  ThemeData get getThemeData => _themeData;
  void setThemeData(ThemeData data) {
    _themeData = data;
    notifyListeners();
  }
}

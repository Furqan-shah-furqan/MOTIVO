import 'package:flutter/material.dart';
import 'package:motivo/Theme/theme.dart';

enum AppTheme { light, dark }

class ThemeProvider extends ChangeNotifier {
  AppTheme currentTheme = AppTheme.light;

  ThemeData get themeData {
    switch (currentTheme) {
      case AppTheme.dark:
        return darkTheme;
      case AppTheme.light:
        return lightTheme;
    }
  }

  void toggleTheme() {
    if (currentTheme == AppTheme.light) {
      currentTheme = AppTheme.dark;
    } else {
      currentTheme = AppTheme.light;
    }
    notifyListeners();
  }

  bool isFavorite = false;

  void toggleFavButton() {
    isFavorite = !isFavorite;
    notifyListeners();
  }

  resetFavButton() {
    isFavorite = false;
    notifyListeners();
  }

  List<String> saveQuotesList = [];

  saveQuotes(String quote) {
    if (!saveQuotesList.contains(quote)) {
      saveQuotesList.add(quote);
      notifyListeners();
    }
  }

  deleteQuote(index) {
    saveQuotesList.removeAt(index);
    notifyListeners();
  }
}

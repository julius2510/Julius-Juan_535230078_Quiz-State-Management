import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'theme.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _currentTheme = AppThemes.blueTheme;
  String _currentFont = 'Roboto';

  ThemeData get currentTheme => _currentTheme;
  String get currentFont => _currentFont;

  void changeTheme(ThemeData theme) {
    _currentTheme = theme.copyWith(
      textTheme: theme.textTheme.apply(fontFamily: _currentFont),
    );
    notifyListeners();
  }

  void changeFont(String font) {
  _currentFont = font;
  switch (font) {
    case 'Roboto':
      _currentTheme = _currentTheme.copyWith(
        textTheme: GoogleFonts.robotoTextTheme(_currentTheme.textTheme),
      );
      break;
    case 'Lobster':
      _currentTheme = _currentTheme.copyWith(
        textTheme: GoogleFonts.lobsterTextTheme(_currentTheme.textTheme),
      );
      break;
    case 'Pacifico':
      _currentTheme = _currentTheme.copyWith(
        textTheme: GoogleFonts.pacificoTextTheme(_currentTheme.textTheme),
      );
      break;
    default:
      _currentTheme = _currentTheme.copyWith(
        textTheme: GoogleFonts.robotoTextTheme(_currentTheme.textTheme),
      );
  }
  notifyListeners();
}
}

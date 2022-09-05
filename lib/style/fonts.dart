import 'package:flutter/material.dart';
import 'package:prueba2_mv/style/colors.dart';

class AppTypographyPalette {
  AppTypographyPalette._();

  // Headers

  static const _baseTextTitle = TextStyle(
      fontFamily: 'Metropolis',
      fontWeight: FontWeight.w600,
      color: Colors.black87);

  static TextStyle get titleSub {
    return _baseTextTitle;
  }

  static TextStyle get description {
    return _baseTextTitle.copyWith(color: Colors.black, height: 1.3);
  }

  static TextStyle get presentation {
    return _baseTextTitle.copyWith(color: AppColorPalette.grey);
  }

  static TextStyle get textFont300 {
    return _baseTextTitle.copyWith(
        fontWeight: FontWeight.w300, color: Colors.black);
  }

  static TextStyle get textFont500 {
    return _baseTextTitle.copyWith(fontWeight: FontWeight.w500);
  }

  static TextStyle get textButton {
    return _baseTextTitle.copyWith(fontWeight: FontWeight.w500);
  }
}

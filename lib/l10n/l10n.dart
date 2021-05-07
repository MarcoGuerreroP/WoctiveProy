import 'package:flutter/material.dart';

class L10n {
  static final all = [
    const Locale('en'),
    const Locale('es'),
    //const Locale('de'),
  ];

  static String getFlag(String code) {
    switch (code) {
      //case 'pt':
      // return '🇦🇪';
      case 'es':
        return '🇪🇸';
      case 'en':
      default:
        return '🇺🇸';
    }
  }
}

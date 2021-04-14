import 'package:flutter/cupertino.dart';
import 'package:flutter_auth/localization/localization.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String LANGUAGE_CODE = 'languageCode';

const String ENGLISH = 'en';
const String SPANISH = 'es';
const String PORTUGUES = 'pt';

Future<Locale> setLocale(String languageCode) async {
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  await _prefs.setString(LANGUAGE_CODE, languageCode);
  return _locale(languageCode);
}

Future<Locale> getLocale() async {
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  String languageCode = _prefs.getString(LANGUAGE_CODE) ?? "es";
  return _locale(languageCode);
}

Locale _locale(String languageCode) {
  switch (languageCode) {
    case ENGLISH:
      return Locale(ENGLISH, 'US');
    case SPANISH:
      return Locale(SPANISH, 'MX');
    case PORTUGUES:
      return Locale(PORTUGUES, 'PT');
    default:
      return Locale(SPANISH, 'MX');
  }
}

String getTranslated(BuildContext context, String key) {
  return LanguageLocalization.of(context).getTraslatedValue(key);
}

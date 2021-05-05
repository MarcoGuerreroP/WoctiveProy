// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `English`
  String get language {
    return Intl.message(
      'English',
      name: 'language',
      desc: 'The current Language',
      args: [],
    );
  }

  /// `Hello World!`
  String get helloWorld {
    return Intl.message(
      'Hello World!',
      name: 'helloWorld',
      desc: 'A programmer greeting',
      args: [],
    );
  }

  /// `Hello {username}`
  String hello(Object username) {
    return Intl.message(
      'Hello $username',
      name: 'hello',
      desc: 'A welcome message',
      args: [username],
    );
  }

  /// `Welcome to`
  String get welcome {
    return Intl.message(
      'Welcome to',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// ` Woctive`
  String get woactive {
    return Intl.message(
      ' Woctive',
      name: 'woactive',
      desc: '',
      args: [],
    );
  }

  /// `New to Woctive?`
  String get newto {
    return Intl.message(
      'New to Woctive?',
      name: 'newto',
      desc: '',
      args: [],
    );
  }

  /// `Log in`
  String get login {
    return Intl.message(
      'Log in',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get signup {
    return Intl.message(
      'Sign up',
      name: 'signup',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirmpassword {
    return Intl.message(
      'Confirm Password',
      name: 'confirmpassword',
      desc: '',
      args: [],
    );
  }

  /// `Go Back`
  String get goback {
    return Intl.message(
      'Go Back',
      name: 'goback',
      desc: '',
      args: [],
    );
  }

  /// `Please re-enter password`
  String get pleasereenterpassword {
    return Intl.message(
      'Please re-enter password',
      name: 'pleasereenterpassword',
      desc: '',
      args: [],
    );
  }

  /// `Password does not match`
  String get passworddoesnotmatch {
    return Intl.message(
      'Password does not match',
      name: 'passworddoesnotmatch',
      desc: '',
      args: [],
    );
  }

  /// `Please supply a valid email`
  String get pleasesupplyavalidemail {
    return Intl.message(
      'Please supply a valid email',
      name: 'pleasesupplyavalidemail',
      desc: '',
      args: [],
    );
  }

  /// `team`
  String get team {
    return Intl.message(
      'team',
      name: 'team',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'es'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}
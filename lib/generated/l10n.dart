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

  /// ` Log in`
  String get login2 {
    return Intl.message(
      ' Log in',
      name: 'login2',
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

  /// ` Sign up`
  String get signup2 {
    return Intl.message(
      ' Sign up',
      name: 'signup2',
      desc: '',
      args: [],
    );
  }

  /// `Go back`
  String get goback {
    return Intl.message(
      'Go back',
      name: 'goback',
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

  /// `Confirm password`
  String get confirmpassword {
    return Intl.message(
      'Confirm password',
      name: 'confirmpassword',
      desc: '',
      args: [],
    );
  }

  /// `Please enter password`
  String get pleasereenterpassword {
    return Intl.message(
      'Please enter password',
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

  /// `Team`
  String get team {
    return Intl.message(
      'Team',
      name: 'team',
      desc: '',
      args: [],
    );
  }

  /// `Dont have an account?`
  String get donthaveanaccount {
    return Intl.message(
      'Dont have an account?',
      name: 'donthaveanaccount',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get alreadyhaveanaccount {
    return Intl.message(
      'Already have an account?',
      name: 'alreadyhaveanaccount',
      desc: '',
      args: [],
    );
  }

  /// `User`
  String get user {
    return Intl.message(
      'User',
      name: 'user',
      desc: '',
      args: [],
    );
  }

  /// `You are administrator?`
  String get youareadministrator {
    return Intl.message(
      'You are administrator?',
      name: 'youareadministrator',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Messages`
  String get messages {
    return Intl.message(
      'Messages',
      name: 'messages',
      desc: '',
      args: [],
    );
  }

  /// `Saves`
  String get saved {
    return Intl.message(
      'Saves',
      name: 'saved',
      desc: '',
      args: [],
    );
  }

  /// `Favorites`
  String get favorites {
    return Intl.message(
      'Favorites',
      name: 'favorites',
      desc: '',
      args: [],
    );
  }

  /// `Homework`
  String get homework {
    return Intl.message(
      'Homework',
      name: 'homework',
      desc: '',
      args: [],
    );
  }

  /// `Log out`
  String get logout {
    return Intl.message(
      'Log out',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Missing information, try again`
  String get missinginfo {
    return Intl.message(
      'Missing information, try again',
      name: 'missinginfo',
      desc: '',
      args: [],
    );
  }

  /// `Login Successful`
  String get loginsuccess {
    return Intl.message(
      'Login Successful',
      name: 'loginsuccess',
      desc: '',
      args: [],
    );
  }

  /// `Please a Enter Password`
  String get enterpassword {
    return Intl.message(
      'Please a Enter Password',
      name: 'enterpassword',
      desc: '',
      args: [],
    );
  }

  /// `Passwords does not match`
  String get dontmatchpassword {
    return Intl.message(
      'Passwords does not match',
      name: 'dontmatchpassword',
      desc: '',
      args: [],
    );
  }

  /// `Validate your email`
  String get validemail {
    return Intl.message(
      'Validate your email',
      name: 'validemail',
      desc: '',
      args: [],
    );
  }

  /// `Add project`
  String get addproyect {
    return Intl.message(
      'Add project',
      name: 'addproyect',
      desc: '',
      args: [],
    );
  }

  /// `Project's name`
  String get nameproyect {
    return Intl.message(
      'Project\'s name',
      name: 'nameproyect',
      desc: '',
      args: [],
    );
  }

  /// `ID class`
  String get idclass {
    return Intl.message(
      'ID class',
      name: 'idclass',
      desc: '',
      args: [],
    );
  }

  /// `Due date`
  String get duedate {
    return Intl.message(
      'Due date',
      name: 'duedate',
      desc: '',
      args: [],
    );
  }

  /// `Name of the team`
  String get nameteam {
    return Intl.message(
      'Name of the team',
      name: 'nameteam',
      desc: '',
      args: [],
    );
  }

  /// `Error, fill in the fields`
  String get errorfillinthefields {
    return Intl.message(
      'Error, fill in the fields',
      name: 'errorfillinthefields',
      desc: '',
      args: [],
    );
  }

  /// `Create Project`
  String get createproyect {
    return Intl.message(
      'Create Project',
      name: 'createproyect',
      desc: '',
      args: [],
    );
  }

  /// `Project successfully added`
  String get projectsuccessfullyadded {
    return Intl.message(
      'Project successfully added',
      name: 'projectsuccessfullyadded',
      desc: '',
      args: [],
    );
  }

  /// `Start`
  String get start {
    return Intl.message(
      'Start',
      name: 'start',
      desc: '',
      args: [],
    );
  }

  /// `Proyects`
  String get proyects {
    return Intl.message(
      'Proyects',
      name: 'proyects',
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
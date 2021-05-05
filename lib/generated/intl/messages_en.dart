// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static m0(username) => "Hello ${username}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "confirmpassword" : MessageLookupByLibrary.simpleMessage("Confirm Password"),
    "email" : MessageLookupByLibrary.simpleMessage("Email"),
    "goback" : MessageLookupByLibrary.simpleMessage("Go Back"),
    "hello" : m0,
    "helloWorld" : MessageLookupByLibrary.simpleMessage("Hello World!"),
    "language" : MessageLookupByLibrary.simpleMessage("English"),
    "login" : MessageLookupByLibrary.simpleMessage("Log in"),
    "newto" : MessageLookupByLibrary.simpleMessage("New to Woctive?"),
    "password" : MessageLookupByLibrary.simpleMessage("Password"),
    "passworddoesnotmatch" : MessageLookupByLibrary.simpleMessage("Password does not match"),
    "pleasereenterpassword" : MessageLookupByLibrary.simpleMessage("Please re-enter password"),
    "pleasesupplyavalidemail" : MessageLookupByLibrary.simpleMessage("Please supply a valid email"),
    "signup" : MessageLookupByLibrary.simpleMessage("Sign up"),
    "team" : MessageLookupByLibrary.simpleMessage("team"),
    "welcome" : MessageLookupByLibrary.simpleMessage("Welcome to"),
    "woactive" : MessageLookupByLibrary.simpleMessage(" Woctive")
  };
}

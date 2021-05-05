// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a es locale. All the
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
  String get localeName => 'es';

  static m0(username) => "Hola ${username}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "confirmpassword" : MessageLookupByLibrary.simpleMessage("Confirmar contraseña"),
    "email" : MessageLookupByLibrary.simpleMessage("Correo electronico"),
    "goback" : MessageLookupByLibrary.simpleMessage("Regresar"),
    "hello" : m0,
    "helloWorld" : MessageLookupByLibrary.simpleMessage("Hola Mundo!"),
    "language" : MessageLookupByLibrary.simpleMessage("Español"),
    "login" : MessageLookupByLibrary.simpleMessage("Iniciar sesion"),
    "newto" : MessageLookupByLibrary.simpleMessage("¿Nuevo en Woctive?"),
    "password" : MessageLookupByLibrary.simpleMessage("Contraseña"),
    "passworddoesnotmatch" : MessageLookupByLibrary.simpleMessage("Las contraseñas no coinciden"),
    "pleasereenterpassword" : MessageLookupByLibrary.simpleMessage("Vuelva a ingresar la contraseña"),
    "pleasesupplyavalidemail" : MessageLookupByLibrary.simpleMessage("Ingresa un email valido"),
    "signup" : MessageLookupByLibrary.simpleMessage("Registrarse"),
    "team" : MessageLookupByLibrary.simpleMessage("equipo"),
    "welcome" : MessageLookupByLibrary.simpleMessage("Bienvenido a"),
    "woactive" : MessageLookupByLibrary.simpleMessage(" Woctive")
  };
}

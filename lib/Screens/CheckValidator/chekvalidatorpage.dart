import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Home/home_screen.dart';


class CheckPageValidator extends StatefulWidget {
  CheckPageValidator({Key key}) : super(key: key);
  static final routeName = 'check';

  @override
  _CheckPageValidatorState createState() => _CheckPageValidatorState();
}

class _CheckPageValidatorState extends State<CheckPageValidator> {
  final auth = FirebaseAuth.instance;
  User user;
  Timer timer;

  @override
  void initState() {
    user = auth.currentUser;

    user.sendEmailVerification();

    timer = Timer.periodic(Duration(seconds: 5), (timer) { 
      checkEmailVerifield();
    });
    super.initState();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Ha sido enviado un correo de verficacion a este email: ${user.email} por favor de verificarlo'),)
    );
  }

  Future<void> checkEmailVerifield() async {

    user = auth.currentUser;
    await user.reload();
      if(user.emailVerified){
        timer.cancel();
        Navigator.popAndPushNamed(context, HomeScreen.routeName);
      }
  }
}
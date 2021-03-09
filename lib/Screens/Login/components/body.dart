import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:flutter_auth/Screens/Home/home_screen.dart';

import 'package:flutter_auth/Screens/Login/components/background.dart';
import 'package:flutter_auth/Screens/Signup/signup_screen.dart';
import 'package:flutter_auth/components/already_have_an_account_acheck.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/rounded_input_field.dart';
import 'package:flutter_auth/components/rounded_password_field.dart';
import 'package:flutter_auth/generated/l10n.dart';
import 'package:flutter_svg/svg.dart';
export 'package:flutter_auth/Screens/Login/components/body.dart';

// ignore: must_be_immutable
class Body extends StatelessWidget {
  final auth = FirebaseAuth.instance;
  String _email, _password;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: S.current.email,
              onChanged: (value) {
                _email = value.trim();
              },
              keyboardtype: TextInputType.emailAddress,
            ),
            RoundedPasswordField(
              keyboardType: TextInputType.visiblePassword,
              onChanged: (value) {
                _password = value.trim();
              },
            ),
            RoundedButton(
              text: S.current.login,
              press: () {
                auth.signInWithEmailAndPassword(
                    email: _email, password: _password);

                Navigator.pushReplacementNamed(context, HomeScreen.routeName);
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.pushReplacementNamed(context, SignUpScreen.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}

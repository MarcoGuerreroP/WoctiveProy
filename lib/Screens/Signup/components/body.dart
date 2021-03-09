import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/CheckValidator/chekvalidatorpage.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/Signup/components/background.dart';
import 'package:flutter_auth/Screens/Signup/components/or_divider.dart';
import 'package:flutter_auth/Screens/Signup/components/social_icon.dart';
import 'package:flutter_auth/components/already_have_an_account_acheck.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/rounded_input_field.dart';
import 'package:flutter_auth/components/rounded_password_field.dart';
import 'package:flutter_auth/generated/l10n.dart';
import 'package:flutter_svg/svg.dart';

// ignore: must_be_immutable
class Body extends StatelessWidget {
  TextEditingController _password = TextEditingController();
  TextEditingController _confirmpassword = TextEditingController();

  String _email;
  String _pass;
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),
            RoundedInputField(
              keyboardtype: TextInputType.emailAddress,
<<<<<<< HEAD
              hintText: "Your Email",
=======
              hintText: S.current.email,
>>>>>>> c9eb3d707395040d9106b70e942353f5e502eefc
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              keyboardType: TextInputType.text,
              hintText: S.current.password,
              controller: _password,
              validator: (String value) {
                if (value.isEmpty) {
                  return 'Please a Enter Password';
                } else {
                  return null;
                }
              },
              onChanged: (value) {
                _pass = value.trim();
              },
            ),
            RoundedPasswordField(
              keyboardType: TextInputType.text,
              controller: _confirmpassword,
<<<<<<< HEAD
              hintText: 'Confirm Password',
              validator: (String value) {
                if (value.isEmpty) {
                  return 'Please re-enter password';
                }

                if (_password.text != _confirmpassword.text) {
                  return "Password does not match";
=======
              hintText: S.current.confirmpassword,
              validator: (String value) {
                if (value.isEmpty) {
                  return S.current.pleasereenterpassword;
                }

                if (_password.text != _confirmpassword.text) {
                  return S.current.passworddoesnotmatch;
>>>>>>> c9eb3d707395040d9106b70e942353f5e502eefc
                }

                return null;
              },
              onChanged: (value) {
                _email = value.trim();
              },
            ),
            RoundedButton(
              text: S.current.signup,
              press: () {
<<<<<<< HEAD
                auth
                    .createUserWithEmailAndPassword(
                        email: _email, password: _pass)
                    .then((_) {
                  Navigator.pushReplacementNamed(
                      context, CheckPageValidator.routeName);
                });
=======
                auth.createUserWithEmailAndPassword(
                    email: _email, password: _pass);
                Navigator.popAndPushNamed(
                    context, CheckPageValidator.routeName);
>>>>>>> c9eb3d707395040d9106b70e942353f5e502eefc
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.pushReplacementNamed(context, LoginScreen.routeName);
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

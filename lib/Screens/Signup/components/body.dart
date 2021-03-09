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
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              keyboardType: TextInputType.text,
              hintText: 'Password',
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
              hintText: 'Confirm Password',
              validator: (String value) {
                if (value.isEmpty) {
                  return 'Please re-enter password';
                }

                if (_password.text != _confirmpassword.text) {
                  return "Password does not match";
                }

                return null;
              },
              onChanged: (value) {
                _email = value.trim();
              },
            ),
            RoundedButton(
              text: "SIGNUP",
              press: () {
                auth
                    .createUserWithEmailAndPassword(
                        email: _email, password: _pass)
                    .then((_) {
                  Navigator.pushReplacementNamed(
                      context, CheckPageValidator.routeName);
                });
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

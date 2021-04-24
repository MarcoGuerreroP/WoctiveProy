import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/Collection/Firestore.dart';
import 'package:flutter_auth/Data/services/authentication.dart';
import 'package:flutter_auth/Screens/CheckValidator/chekvalidatorpage.dart';
// import 'package:flutter_auth/Screens/Home/home_screen.dart';

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

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final AuthService _auth = AuthService();

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _userController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  final TextEditingController _confirmpasswordController =
      TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Form(
      key: _scaffoldkey,
      child: Background(
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
                keyboardtype: TextInputType.name,
                controller: _userController,
                hintText: 'Usuario',
                onChanged: (value) {},
              ),
              RoundedInputField(
                keyboardtype: TextInputType.emailAddress,
                controller: _emailController,
                hintText: S.current.email,
                onChanged: (value) {},
              ),
              RoundedPasswordField(
                keyboardType: TextInputType.text,
                hintText: S.current.password,
                controller: _passwordController,
                validator: (String value) {
                  if (value.isEmpty) {
                    return 'Please a Enter Password';
                  } else {
                    return null;
                  }
                },
              ),
              RoundedPasswordField(
                keyboardType: TextInputType.text,
                controller: _confirmpasswordController,
                hintText: S.current.confirmpassword,
                validator: (String value) {
                  if (value.isEmpty) {
                    return S.current.pleasereenterpassword;
                  }

                  if (_passwordController.text !=
                      _confirmpasswordController.text) {
                    return S.current.passworddoesnotmatch;
                  }

                  return null;
                },
              ),
              RoundedButton(
                text: S.current.signup,
                press: () async {
                  if (_emailController.text.isEmpty ||
                      _passwordController.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: const Text(
                            'Falta informacion por agregar, vuelve a intentarlo'),
                        backgroundColor: Colors.red,
                      ),
                    );
                    return;
                  }
                  if (_confirmpasswordController.text.isEmpty ||
                      _confirmpasswordController.text !=
                          _passwordController.text) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          content: const Text(
                              'Las contraseñas no coinciden, vuelve a intentarlo'),
                          backgroundColor: Colors.red),
                    );
                    return;
                  }
                  dynamic result = await _auth.signUp(
                      _emailController.text, _passwordController.text);
                  if (result == null) {
                    setState(() {
                      S.current.pleasesupplyavalidemail;
                    });
                  } else {
                    Navigator.pushReplacementNamed(
                        context, CheckPageValidator.routeName);
                  }
                  try {
                    await Firebase.initializeApp();
                    User updateUser = FirebaseAuth.instance.currentUser;
                    updateUser.updateProfile(displayName: _userController.text);
                    userSetup(_userController.text);
                  } catch (e) {
                    print(e.toString());
                  }
                },
              ),
              SizedBox(height: size.height * 0.03),
              AlreadyHaveAnAccountCheck(
                login: false,
                press: () {
                  Navigator.pushReplacementNamed(
                      context, LoginScreen.routeName);
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
      ),
    );
  }
}

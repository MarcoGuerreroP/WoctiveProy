// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:flutter_auth/Data/services/authentication.dart';
import 'package:flutter_auth/Screens/Home/home2.dart';

// import 'package:flutter_auth/Screens/Home/home_screen.dart';

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
  final AuthService _auth = AuthService();
  // final CollecionService _colleccion = CollecionService();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context)  {
    Size size = MediaQuery.of(context).size;
  return Form(
      key: _formKey,
      child: Background(
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
                  _emailController.text = value.trim();
                },
                keyboardtype: TextInputType.emailAddress,
              ),
              RoundedPasswordField(
                keyboardType: TextInputType.visiblePassword,
                onChanged: (value) {
                  _passwordController.text = value.trim();
                },
              ),
              RoundedButton(
                text: S.current.login,
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
                  {
                    if (_formKey.currentState.validate()) {
                      dynamic result = await _auth.signIn(
                          _emailController.text, _passwordController.text);
                      if (result != null) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: const Text('Inicion de sesion exitoso'),
                            backgroundColor: Colors.green,
                          ),
                        );
                        setState(() {
                          Navigator.pushReplacementNamed(
                              context, Home2.routeName);
                        });
                      }
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: const Text('Error'),
                          backgroundColor: Colors.red,
                        ),
                      );
                    }

                    Navigator.pushReplacementNamed(context, Home2.routeName);
                  }
                },
              ),
              SizedBox(height: size.height * 0.03),
              AlreadyHaveAnAccountCheck(
                press: () {
                  Navigator.pushReplacementNamed(
                      context, SignUpScreen.routeName);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}

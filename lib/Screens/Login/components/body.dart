import 'package:flutter/material.dart';
import 'package:flutter_auth/Data/services/authentication.dart';
import 'package:flutter_auth/Screens/Home/home2.dart';
import 'package:flutter_auth/Screens/Login/components/background.dart';
import 'package:flutter_auth/Screens/Signup/signup_screen.dart';
import 'package:flutter_auth/components/already_have_an_account_acheck.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/rounded_input_field.dart';
import 'package:flutter_auth/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';
export 'package:flutter_auth/Screens/Login/components/body.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// ignore: must_be_immutable
class Body extends StatelessWidget {
  final AuthService _auth = AuthService();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Form(
      key: _formKey,
      child: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: size.height * 0.03),
              SvgPicture.asset(
                "assets/icons/login.svg",
                height: size.height * 0.35,
              ),
              SizedBox(height: size.height * 0.03),
              RoundedInputField(
                hintText: AppLocalizations.of(context).email,
                onChanged: (value) {
                  _emailController.text = value.trim();
                },
                keyboardtype: TextInputType.emailAddress,
              ),
              RoundedPasswordField(
                hintText: AppLocalizations.of(context).password,
                keyboardType: TextInputType.visiblePassword,
                onChanged: (value) {
                  _passwordController.text = value.trim();
                },
              ),
              RoundedButton(
                text: AppLocalizations.of(context).login,
                press: () async {
                  if (_emailController.text.isEmpty ||
                      _passwordController.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(AppLocalizations.of(context).missinginfo),
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
                            content:
                                Text(AppLocalizations.of(context).loginsuccess),
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

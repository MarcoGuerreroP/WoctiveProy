import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/Collection/Firestore.dart';
import 'package:flutter_auth/Data/services/authentication.dart';
import 'package:flutter_auth/Screens/CheckValidator/chekvalidatorpage.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/Signup/components/background.dart';
import 'package:flutter_auth/components/already_have_an_account_acheck.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/rounded_input_field.dart';
import 'package:flutter_auth/components/rounded_password_field.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final AuthService _auth = AuthService();
  final CollecionService _colleccion = CollecionService();

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _userController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  final TextEditingController _confirmpasswordController =
      TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();

  bool isAdmin = false;

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
                "",
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
                hintText: AppLocalizations.of(context).user,
                onChanged: (value) {},
              ),
              RoundedInputField(
                keyboardtype: TextInputType.emailAddress,
                controller: _emailController,
                hintText: AppLocalizations.of(context).email,
                onChanged: (value) {},
              ),
              RoundedPasswordField(
                keyboardType: TextInputType.text,
                hintText: AppLocalizations.of(context).password,
                controller: _passwordController,
                validator: (String value) {
                  if (value.isEmpty) {
                    return AppLocalizations.of(context).enterpassword;
                  } else {
                    return null;
                  }
                },
              ),
              RoundedPasswordField(
                keyboardType: TextInputType.text,
                controller: _confirmpasswordController,
                hintText: AppLocalizations.of(context).confirmpassword,
                validator: (String value) {
                  if (value.isEmpty) {
                    return AppLocalizations.of(context).enterpassword;
                  }

                  if (_passwordController.text !=
                      _confirmpasswordController.text) {
                    return AppLocalizations.of(context).dontmatchpassword;
                  }

                  return null;
                },
              ),
              Row(
                children: [
                  Text(AppLocalizations.of(context).youareadministrator),
                  Checkbox(
                    value: isAdmin,
                    onChanged: (bool newValue) {
                      setState(() {
                        isAdmin = newValue;
                      });
                    },
                    activeColor: Colors.blue,
                  )
                ],
              ),
              RoundedButton(
                text: AppLocalizations.of(context).signup,
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
                  if (_confirmpasswordController.text.isEmpty ||
                      _confirmpasswordController.text !=
                          _passwordController.text) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          content: Text(
                              AppLocalizations.of(context).dontmatchpassword),
                          backgroundColor: Colors.red),
                    );
                    return;
                  }
                  dynamic result = await _auth.signUp(
                      _emailController.text, _passwordController.text);
                  if (result == null) {
                    setState(() {
                      print(AppLocalizations.of(context).validemail);
                    });
                  } else {
                    Navigator.pushReplacementNamed(
                        context, CheckPageValidator.routeName);
                  }
                  try {
                    // await Firebase.initializeApp();
                    User updateUser = FirebaseAuth.instance.currentUser;
                    updateUser.updateProfile(displayName: _userController.text);
                    _colleccion.userSetup(_userController.text);
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
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/CheckValidator/chekvalidatorpage.dart';
import 'package:flutter_auth/Screens/Home/home2.dart';
import 'package:flutter_auth/Screens/Home/home_screen.dart';
import 'package:flutter_auth/Screens/Home/homestack.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/Signup/signup_screen.dart';
import 'package:flutter_auth/Screens/Welcome/welcome_screen.dart';



final Map<String, Widget Function(BuildContext)>  appRoutes = {
        
        
        WelcomeScreen.routeName: ( _ ) => WelcomeScreen(),
        SignUpScreen.routeName: ( _ ) => SignUpScreen(),
        LoginScreen.routeName: ( _ ) => LoginScreen(),
        HomeScreen.routeName: ( _ ) => HomeScreen(),
        CheckPageValidator.routeName: ( _ ) => CheckPageValidator(),
        HomeStack.routeName: ( _ ) => HomeStack(),
        Home2.routeName : (_ ) => Home2()
};
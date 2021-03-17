import 'package:flutter/material.dart';
// import 'package:flutter_auth/Screens/Home/Drawer/drawer_screen.dart';
import 'package:flutter_auth/Screens/Home/home_screen.dart';


class HomeStack extends StatelessWidget {
  const HomeStack({Key key}) : super(key: key);
  static final routeName = 'stack';
  @override
  Widget build(BuildContext context) {
    
      return Scaffold(
       backgroundColor:Colors.white,
       
         body:Stack(
            children: [
              // DrawerScreen(),
              HomeScreen(),
              
              
            ],
          ), 
          );
          
        
    
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Home/Drawer/drawer_screen.dart';
import 'package:flutter_auth/Screens/Home/home_screen.dart';



class Home2 extends StatefulWidget {
  Home2({Key key}) : super(key: key);

  static final routeName ='home2';

  @override
  _Home2State createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeScreen(),
      appBar: AppBar(title: Text('Bienvenidos'),
      
      
      
      
      ),

       drawer: DrawerScreen(),
    );
  }
}
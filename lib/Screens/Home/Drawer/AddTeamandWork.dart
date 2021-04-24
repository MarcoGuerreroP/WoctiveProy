import 'package:flutter/material.dart';

class AddTeamandWork extends StatelessWidget {
  static final routeName = 'AddTeamandWork';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Agregar...',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.grey.shade900),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 50.0),
                primary: Colors.white,
              ),
              
              
              child: Text("Equipo"),
              onPressed: () {},
            ),
            TextButton(
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 50.0),
                primary: Colors.white,
              ),
              child: Text("Tarea"),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

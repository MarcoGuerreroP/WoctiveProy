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
            FlatButton(
              padding: EdgeInsets.symmetric(horizontal: 80, vertical: 50.0),
              color: Colors.white,
              child: Text("Equipo"),
              onPressed: () {},
            ),
            FlatButton(
              padding: EdgeInsets.symmetric(horizontal: 80, vertical: 50.0),
              color: Colors.white,
              child: Text("Tarea"),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_auth/AddWork/Addwork.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
              child: Text(AppLocalizations.of(context).team),
              onPressed: () {},
            ),
            TextButton(
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 50.0),
                primary: Colors.white,
              ),
              child: Text("Tarea"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddWork()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

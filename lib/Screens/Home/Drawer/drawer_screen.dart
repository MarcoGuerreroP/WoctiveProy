import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/Data/services/authentication.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DrawerScreen extends StatefulWidget {
  final Widget child;
  DrawerScreen({key, this.child}) : super(key: key);

  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: EdgeInsets.only(top: 50, left: 40, bottom: 70),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  FirebaseAuth.instance.currentUser.displayName,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                ),
                FutureBuilder(
                    future: _auth.firebaseUsuario(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return Text(snapshot.data);
                      } else {
                        return CircularProgressIndicator();
                      }
                    }),
              ],
            ),
            Column(
              children: <Widget>[
                NewRow(
                  text: AppLocalizations.of(context).settings,
                  icon: Icons.error_outline,
                ),
                SizedBox(
                  height: 20,
                ),
                NewRow(
                  text: AppLocalizations.of(context).profile,
                  icon: Icons.person_outline,
                ),
                SizedBox(
                  height: 20,
                ),
                NewRow(
                  text: AppLocalizations.of(context).messages,
                  icon: Icons.chat_bubble_outline,
                ),
                SizedBox(
                  height: 20,
                ),
                NewRow(
                  text: AppLocalizations.of(context).saved,
                  icon: Icons.bookmark_border,
                ),
                SizedBox(
                  height: 20,
                ),
                NewRow(
                  text: AppLocalizations.of(context).favorites,
                  icon: Icons.favorite_border,
                ),
                SizedBox(
                  height: 20,
                ),
                NewRow(
                  text: AppLocalizations.of(context).homework,
                  icon: Icons.lightbulb_outline,
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.cancel,
                  color: Colors.white.withOpacity(0.5),
                ),
                SizedBox(
                  width: 10,
                ),
                TextButton(
                  onPressed: () {
                    _auth.signOut(context);
                    Navigator.pushReplacementNamed(
                        context, LoginScreen.routeName);
                  },
                  child: Text(
                    AppLocalizations.of(context).logout,
                    style: TextStyle(color: Colors.white.withOpacity(0.5)),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class NewRow extends StatelessWidget {
  final IconData icon;
  final String text;

  const NewRow({
    Key key,
    this.icon,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.white,
        ),
        SizedBox(
          width: 20,
        ),
        Text(
          text,
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }
}

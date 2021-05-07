import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAnAccountCheck({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login
              ? AppLocalizations.of(context).donthaveanaccount
              : AppLocalizations.of(context).alreadyhaveanaccount,
          style: TextStyle(color: kPrimaryColor),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login
                ? AppLocalizations.of(context).signup2
                : AppLocalizations.of(context).login2,
            style: TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}

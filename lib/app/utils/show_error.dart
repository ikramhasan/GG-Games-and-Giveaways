import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

showError(BuildContext context, String message) {
  Alert(
    context: context,
    type: AlertType.error,
    title: "ERROR",
    desc: message,
    style: AlertStyle(
      backgroundColor: Theme.of(context).cardColor,
      titleStyle: TextStyle(color: Colors.red),
      descStyle: TextStyle(color: Colors.white),
    ),
    buttons: [
      DialogButton(
        child: Text(
          "CLOSE",
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        color: Theme.of(context).accentColor,
        onPressed: () => Navigator.pop(context),
        width: 120,
      )
    ],
  ).show();
}

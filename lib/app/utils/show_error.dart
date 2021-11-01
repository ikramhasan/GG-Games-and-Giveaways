import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void showError(BuildContext context, String message) {
  Alert(
    context: context,
    type: AlertType.error,
    title: "ERROR",
    desc: message,
    style: AlertStyle(
      backgroundColor: Theme.of(context).cardColor,
      titleStyle: const TextStyle(color: Colors.red),
      descStyle: const TextStyle(color: Colors.white),
    ),
    buttons: [
      DialogButton(
        color: Theme.of(context).colorScheme.secondary,
        onPressed: () => Navigator.pop(context),
        width: 120,
        child: const Text(
          "CLOSE",
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
      )
    ],
  ).show();
}

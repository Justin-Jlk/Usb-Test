import 'package:flutter/material.dart';

class SnackBarService {
  static final scaffoldKey = GlobalKey<ScaffoldMessengerState>();
  static void showSnackBar(
      {required String content, bool success = true, int sec = 4}) {
    scaffoldKey.currentState!.showSnackBar(SnackBar(
      content: Text(content),
      duration: Duration(seconds: sec),
      behavior: SnackBarBehavior.floating,
      backgroundColor: success ? Colors.green : Colors.red,
    ));
  }
}

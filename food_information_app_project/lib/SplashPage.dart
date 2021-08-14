import 'dart:async';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData(primarySwatch: Colors.green);
    Timer(Duration(seconds: 3), () => Navigator.pushNamed(context, '/Main'));

    return Scaffold(
      body: Center(
          child: Text(
        'Splash',
        style: TextStyle(fontSize: 50),
      )),
    );
  }
}

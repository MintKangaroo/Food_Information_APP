import 'dart:async';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var displayWidth = MediaQuery.of(context).size.width;
    var imgwidth = displayWidth * 0.5;

    ThemeData(primarySwatch: Colors.green);
    Timer(Duration(seconds: 3),
        () => Navigator.popAndPushNamed(context, '/Login'));

    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
            child: Image.asset(
          'assets/images/logo.png',
          width: imgwidth,
          
        )));
  }
}

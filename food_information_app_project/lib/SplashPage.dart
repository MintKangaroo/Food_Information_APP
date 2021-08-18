import 'dart:async';
import 'package:flutter/material.dart';
import 'UserData.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  var Next_Page = "";

  @override
  void initState() {
    super.initState();
    CheckData();
  }

  CheckData() async {
    final prefs = await SharedPreferences.getInstance();
    final ID = prefs.getString("ID") ?? "null";
    print("$ID값이 들어있다.");
    if (ID != "null") {
      setState(() {
        Next_Page = "main";
      });
    } else {
      setState(() {
        Next_Page = "login";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var displayWidth = MediaQuery.of(context).size.width;
    var imgwidth = displayWidth * 0.7;
    ThemeData(primarySwatch: Colors.green);
    print(Next_Page);
    if (Next_Page == "main") {
      Timer(Duration(seconds: 2),
          () => Navigator.popAndPushNamed(context, '/Main'));
    } else if (Next_Page == "login") {
      Timer(Duration(seconds: 2),
          () => Navigator.popAndPushNamed(context, '/Login'));
    } else {
      print("Nope");
    }

    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
            child: Image.asset(
          'assets/images/fishlogo.png',
          width: imgwidth,
        )));
  }
}

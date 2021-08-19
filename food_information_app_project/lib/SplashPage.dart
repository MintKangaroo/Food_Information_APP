import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  String Next_Page = "";

  @override
  void initState() {
    super.initState();
    CheckData();
  }

  //자동로그인 (기기에 저장돼있는 ID값 불러오는 함수)
  CheckData() async {
    final prefs = await SharedPreferences.getInstance();
    final ID = prefs.getString("ID") ?? "null";
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
    if (Next_Page == "main") {
      Timer(Duration(seconds: 2),
          () => Navigator.popAndPushNamed(context, '/Main'));
    } else if (Next_Page == "login") {
      Timer(Duration(seconds: 2),
          () => Navigator.popAndPushNamed(context, '/Login'));
    } else {
      print("Page 이동 Erroe in SplashPage ");
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

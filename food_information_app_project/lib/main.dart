import 'package:flutter/material.dart';
import 'MainPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Information', //TODO "앱이름 정해서 변경하기"
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: MainPage(),
    );
  }
}



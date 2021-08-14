import 'package:flutter/material.dart';
import 'SplashPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '오버쿡드', //TODO: 앱이름 정해서 변경하기
      theme: ThemeData( 
        primaryColor: Colors.white, //FIXME: 앱테마 컬러 고치기
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: SplashPage(),
    );
  }
}



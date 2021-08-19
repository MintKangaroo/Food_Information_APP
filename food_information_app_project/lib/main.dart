import 'package:flutter/material.dart';
import 'SplashPage.dart';
import 'LoginPage.dart';
import 'MainPage.dart';
import 'SignPage.dart';
import 'RestaurantPage.dart';
import 'CafePage.dart';
import 'MyPage.dart';
import 'Setting.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:google_mobile_ads/google_mobile_ads.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(MyApp());
}

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
      initialRoute: '/',
      routes: { //TODO: 이용되는 모든 페이지 넣기
        '/' : (context) => SplashPage(),
        '/Login' : (context) => LoginPage(),
        '/Main' : (context) => MainPage(),
        '/Sign' : (context) => SignPage(),
        '/Restaurant' : (context) => RestaurantPage(),
        '/Cafe' : (context) => CafePage(),
        '/MyPage' : (context) => MyPage(),
        '/Setting' : (context) => Setting()
      }, 
    );
  }
}



import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title : 'Food Information',
      theme:  ThemeData(
        primaryColor: Colors.white,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food Information',
        style: TextStyle(
          fontSize: 20
        ),),
      ),
      drawer: Drawer(
        child: ListView(
          
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Text('Hello World',
            style: TextStyle(
              fontSize: 40
            ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: null,
    );
  }
}
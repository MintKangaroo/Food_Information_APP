import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '오버쿡드', //TODO: "앱 이름 바꾸기"
          style: TextStyle(fontSize: 20),
        ),
      ),
      drawer: Drawer(
        child: ListView(),
      ),
      body: Column(
        children: [
          Text(
            'Hello World',
            style: TextStyle(fontSize: 40),
          ),
          Center(
              child: Container(
            width: 400,
            height: 150,
            color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "컨테이너",
                  style: TextStyle(fontSize: 30),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}

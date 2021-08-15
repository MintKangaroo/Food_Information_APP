import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var displayWidth = MediaQuery.of(context).size.width;
    var displayHeight = MediaQuery.of(context).size.height;
    // ignore: non_constant_identifier_names
    var Boxwidth = displayWidth * 0.8;
    // ignore: non_constant_identifier_names
    var Boxheight = displayHeight * 0.1;

    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  '오버쿡드',
                  style: TextStyle(fontSize: 35),
                ),
              ],
            ),
          ),
          Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.black12, width: 3)),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 30,
                ),
                Text(
                  '카테고리',
                  style: TextStyle(fontSize: 40),
                ),
              ],
            ),
          ),
          Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: Boxwidth,
                    height: Boxheight,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(3.0, 3.0),
                            blurRadius: 10.0,
                            spreadRadius: 1.0,
                          ),
                        ],
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.black12, width: 3)),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Container(
                    width: Boxwidth,
                    height: Boxheight,
                    decoration: BoxDecoration(
                      boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(3.0, 3.0),
                            blurRadius: 10.0,
                            spreadRadius: 1.0,
                          ),
                        ],
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.black12, width: 3)),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Container(
                    width: Boxwidth,
                    height: Boxheight,
                    decoration: BoxDecoration(
                      boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(3.0, 3.0),
                            blurRadius: 10.0,
                            spreadRadius: 1.0,
                          ),
                        ],
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.black12, width: 3)),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 30),
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
        ],
      ),
    ));
  }
}

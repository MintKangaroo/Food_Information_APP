import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var displayWidth = MediaQuery.of(context).size.width;
    var displayHeight = MediaQuery.of(context).size.height;
    // ignore: non_constant_identifier_names
    var Boxwidth = displayWidth * 0.9;
    // ignore: non_constant_identifier_names
    var Boxheight = displayHeight * 0.18;

    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          SizedBox(height: 20,),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  '오버쿡드',
                  style: TextStyle(fontSize: 25),
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
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 3, 0, 0),
                      child: TextField(
                        decoration: InputDecoration(
                          
                          border: InputBorder.none,
                          hintText: '검색어를 입력하세요',
                          suffixIcon: Icon(Icons.search),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
           SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              
              Container(
                child: Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      '카테고리',
                      style: TextStyle(
                          fontSize: 35,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Text("편집",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                          fontWeight: FontWeight.w100,
                        )),
                    SizedBox(
                      width: 25,
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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

import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var displayWidth = MediaQuery.of(context).size.width;
    var displayHeight = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
          appBar: (
            
            AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
            )
          ),
      body: SingleChildScrollView(
        child: Container(
          color : Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person,
                      size: 250,
                    ),
                  ],
                ),
              ),
              Text(
                "ID : ",
                style: TextStyle(fontSize: 25),
              ),
              Text(
                "소개글",
                style: TextStyle(fontSize: 25),
              ),
              Text(
                "내가 다녀간 곳 리스트",
                style: TextStyle(fontSize: 25),
              ),
              Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(3.0, 3.0),
                        blurRadius: 10.0,
                        spreadRadius: 1.0,
                      ),
                    ],
                    color: Colors.red[200],
                    borderRadius: BorderRadius.circular(30),),
                width: displayWidth * 0.95,
                height: displayHeight * 0.1,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 25, 0, 0),
                      child: Row(
                        children: [
                          Text(
                            "맛집 1",
                            style: TextStyle(fontSize: 25),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(3.0, 3.0),
                      blurRadius: 10.0,
                      spreadRadius: 1.0,
                    ),
                  ],
                  color: Colors.red[200],
                  borderRadius: BorderRadius.circular(30),
                ),
                width: displayWidth * 0.95,
                height: displayHeight * 0.1,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 25, 0, 0),
                      child: Row(
                        children: [
                          Text(
                            "맛집 1",
                            style: TextStyle(fontSize: 25),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(3.0, 3.0),
                      blurRadius: 10.0,
                      spreadRadius: 1.0,
                    ),
                  ],
                  color: Colors.red[200],
                  borderRadius: BorderRadius.circular(30),
                ),
                width: displayWidth * 0.95,
                height: displayHeight * 0.1,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 25, 0, 0),
                      child: Row(
                        children: [
                          Text(
                            "맛집 1",
                            style: TextStyle(fontSize: 25),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

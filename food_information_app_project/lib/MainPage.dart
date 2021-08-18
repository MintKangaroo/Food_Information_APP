import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'package:admob_flutter/admob_flutter.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize without device test ids
  Admob.initialize();
  // Add a list of test ids.
  // Admob.initialize(testDeviceIds: ['YOUR DEVICE ID']);

}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}



class _MainPageState extends State<MainPage> {
  AdmobBannerSize? bannerSize;
  int _selectedIndex = 0;
  final List _children = ['/Main','/Restaurant','/Cafe', '/Setting'];

  void initState() {
    super.initState();
    bannerSize = AdmobBannerSize.FULL_BANNER;
  }
  
  void _onItemTapped(int index) {

    if (index == _selectedIndex) {
      setState(() {
        _selectedIndex = index;
      });
    }
    else{
        setState(() {
        _selectedIndex = index;
        Navigator.pushNamed(context, _children[index]);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var displayWidth = MediaQuery.of(context).size.width;
    var displayHeight = MediaQuery.of(context).size.height;
    // ignore: non_constant_identifier_names
    var Boxwidth = displayWidth * 0.9;
    // ignore: non_constant_identifier_names
    var Boxheight = displayHeight * 0.26;

    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            style: TextStyle(
                                fontFamily: "hahmlet",
                                fontSize: 25,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                      child: Container(
                        child: IconButton(
                          icon: Icon(Icons.account_circle),
                          iconSize: 40,
                          onPressed: () {
                            Navigator.pushNamed(context, '/MyPage');
                          },
                        ),
                      ),
                    )
                  ],
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
                              border:
                                  Border.all(color: Colors.black12, width: 3)),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 3, 0, 0),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: '검색어를 입력하세요.',
                                hintStyle:
                                    TextStyle(color: Colors.blue, fontSize: 18),
                                suffixIcon: Icon(
                                  Icons.search,
                                  size: 30,
                                ),
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            '오늘의 추천',
                            style: TextStyle(
                                fontFamily: "hahmlet",
                                fontSize: 35,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  child: Center(
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/Restaurant');
                          },
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "식당",
                                    style: TextStyle(fontSize: 35),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Column(
                                      children: [
                                        Container(
                                            height: displayHeight * 0.08,
                                            width: displayWidth * 0.8,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text("맛집1"),
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(18),
                                            )),
                                        SizedBox(
                                          height: 22,
                                        ),
                                        Container(
                                            height: displayHeight * 0.08,
                                            width: displayWidth * 0.8,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text("맛집2"),
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(18),
                                            )),
                                        SizedBox(
                                          height: 5,
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
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
                              color: Colors.yellow[300],
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/Cafe');
                          },
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "카페",
                                  style: TextStyle(fontSize: 35),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                    height: displayHeight * 0.08,
                                    width: displayWidth * 0.8,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("맛집1"),
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(18),
                                    )),
                                SizedBox(
                                  height: 22,
                                ),
                                Container(
                                    height: displayHeight * 0.08,
                                    width: displayWidth * 0.8,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("맛집1"),
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(18),
                                    )),
                                SizedBox(
                                  height: 5,
                                )
                              ],
                            ),
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
                              color: Colors.orange[300],
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: (_onItemTapped),
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.home,
              color: Colors.blue[700],
            ),
            icon: Icon(
              Icons.home,
              color: Colors.blue[400],
              size: 30,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.restaurant,
              color: Colors.blue[700],
            ),
            icon: Icon(
              Icons.restaurant,
              color: Colors.blue[400],
              size: 30,
            ),
            label: "Restaurant",
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.coffee,
              color: Colors.blue[700],
            ),
            icon: Icon(
              Icons.coffee,
              color: Colors.blue[400],
              size: 30,
            ),
            label: "Cafe",
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.settings,
              color: Colors.blue[700],
            ),
            icon: Icon(
              Icons.settings,
              color: Colors.blue[400],
              size: 30,
            ),
            label: "Setting",
          ),
        ],
      ),
    );
  }
}

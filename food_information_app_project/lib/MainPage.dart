import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:google_mobile_ads/google_mobile_ads.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final String iOSAdId = 'ca-app-pub-3940256099942544/2934735716';
  final String androidAdId = 'ca-app-pub-3940256099942544/6300978111';

  late InterstitialAd interstitial;

  void createInterstitialAd() {
    interstitial = InterstitialAd(
      adUnitId: InterstitialAd.testAdUnitId,
      request: AdRequest(),
      listener: AdListener(
        // Called when an ad is successfully received.
        onAdLoaded: (Ad ad) => print('${ad.runtimeType} loaded.'),
        // Called when an ad request failed.
        onAdFailedToLoad: (Ad ad, LoadAdError error) {
          print('${ad.runtimeType} failed to load: $error');
        },
        // Called when an ad opens an overlay that covers the screen.
        onAdOpened: (Ad ad) => print('${ad.runtimeType} opened.'),
        // Called when an ad removes an overlay that covers the screen.
        onAdClosed: (Ad ad) {
          print('${ad.runtimeType} closed');
          ad.dispose();
          SystemChannels.platform.invokeMethod('SystemNavigator.pop');
        },
        // Called when an ad is in the process of leaving the application.
        onApplicationExit: (Ad ad) => print('Left application.'),
      ),
    )..load();
  }

  @override
  void initState() {
    super.initState();
    //load ads
    createInterstitialAd();
  }

  @override
  void dispose() {
    interstitial.dispose();
    super.dispose();
  }

  int _selectedIndex = 0;
  final List _children = ['/Main', '/Restaurant', '/Cafe', '/Setting'];

  void _onItemTapped(int index) {
    if (index == _selectedIndex) {
      setState(() {
        _selectedIndex = index;
      });
    } else {
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

    return WillPopScope(
      onWillPop: () async {
        showDialog(
            context: context,
            //barrierDismissible - Dialog를 제외한 다른 화면 터치 x
            barrierDismissible: false,
            builder: (BuildContext context) {
              return AlertDialog(
                // RoundedRectangleBorder - Dialog 화면 모서리 둥글게 조절
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                //Dialog Main Title
                title: Column(
                  children: <Widget>[
                    new Text("종료"),
                  ],
                ),
                //
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "앱을 종료하시겠습니까?",
                    ),
                  ],
                ),
                actions: <Widget>[
                  new FlatButton(
                    child: new Text("확인"),
                    onPressed: () {
                      onPressedInterstitialAdButton();
                    },
                  ),
                ],
              );
            });
        return false;
      },
      child: Scaffold(
        body: SafeArea(
          child: GestureDetector(
            onTap: () {
              //키보드가 아닌 부분을 눌렀을 때 키보드 사라짐
              FocusScope.of(context).unfocus();
            },
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
                                  fontFamily: "dohyeon",
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
                                border: Border.all(
                                    color: Colors.black12, width: 3)),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(20, 3, 0, 0),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: '검색어를 입력하세요.',
                                  hintStyle: TextStyle(
                                      color: Colors.blue, fontSize: 18),
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
                                  fontFamily: "dohyeon",
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
                                child: SingleChildScrollView(
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
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
      ),
    );
  }

  void onPressedInterstitialAdButton() {
    interstitial.show();
  }
}

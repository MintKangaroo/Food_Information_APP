import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'UserData.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  var DataSaveCheck = new UserData();
  int _selectedIndex = 3;
  final List _children = ['/Main', '/Restaurant', '/Cafe', '/Setting'];

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

  void _onItemTapped(int index) {
    if (index == _selectedIndex) {
      setState(() {
        _selectedIndex = index;
      });
    } else {
      setState(() {
        _selectedIndex = index;
        Navigator.popAndPushNamed(context, _children[index]);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var displayWidth = MediaQuery.of(context).size.width;
    var displayHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
        children: [
          Center(child: Text("SettingPage")),
          GestureDetector(
              onTap: () {
                DataSaveCheck.LogOutData();
                onPressedInterstitialAdButton();
              },
              child: Container(
                color: Colors.red[100],
                width: 300,
                height: 300,
                child: Text("로그아웃"),
              ))
        ],
      ))),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: (_onItemTapped),
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

  void onPressedInterstitialAdButton() {
    interstitial.show();
  }
}

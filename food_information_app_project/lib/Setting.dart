import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'UserData.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  var DataSaveCheck = new UserData();
  int _selectedIndex = 3;
  final List _children = ['/Main', '/Restaurant', '/Cafe', '/Setting'];

  void _onItemTapped(int index) {
    if (index == _selectedIndex) {
      setState(() {
        _selectedIndex = index;
      });
    } else if (index == 1) {
      _selectedIndex = index;
      Navigator.pop(context);
    } else {
      setState(() {
        _selectedIndex = index;
        Navigator.popAndPushNamed(context, _children[index]);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
        children: [
          Center(child: Text("SettingPage")),
          GestureDetector(
              onTap: () {
                DataSaveCheck.LogOutData();
                SystemChannels.platform.invokeMethod('SystemNavigator.pop');
              },
              child: Container(
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
}

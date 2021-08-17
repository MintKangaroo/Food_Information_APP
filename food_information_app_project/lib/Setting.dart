import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  int _selectedIndex = 3;
  final List _children = ['/Main', '/Restaurant', '/Cafe', '/Setting'];

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
    return Scaffold(
      body: SafeArea(child: Center(child: Text("SettingPage"))),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey[300],
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

import 'package:flutter/material.dart';

class RestaurantPage extends StatefulWidget {
  const RestaurantPage({Key? key}) : super(key: key);

  @override
  _RestaurantPageState createState() => _RestaurantPageState();
}

class _RestaurantPageState extends State<RestaurantPage> {

  int _selectedIndex = 1;
  final List _children = ['/Main', '/Restaurant', '/Cafe', '/Setting'];

  void _onItemTapped(int index) {
    if (index == _selectedIndex) {
      setState(() {
        _selectedIndex = index;
      });
      
    }
    else if(index == 1){
      _selectedIndex = index;
      Navigator.pop(context);
    } 
    else {
      setState(() {
        _selectedIndex = index;
        Navigator.popAndPushNamed(context, _children[index]);
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
              child: Text(
            "RestaurantPage",
            style: TextStyle(fontSize: 50),
          )),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          currentIndex: _selectedIndex,
          showUnselectedLabels: false,
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
      ),
      
    );
  }
}

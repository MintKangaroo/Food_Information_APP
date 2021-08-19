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
    // ignore: non_constant_identifier_names
    var Boxwidth = displayWidth * 0.9;
    // ignore: non_constant_identifier_names
    var Boxheight = displayHeight * 0.2;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
              child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                "식당 추천",
                style: TextStyle(fontSize: 40),
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
                  color: Colors.yellow[300],
                  borderRadius: BorderRadius.circular(15),
                ),
                width: Boxwidth,
                height: Boxheight,
                child: Row(
                  children: [
                    Text(
                      "맛집 1",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
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
                  color: Colors.yellow[300],
                  borderRadius: BorderRadius.circular(15),
                ),
                width: Boxwidth,
                height: Boxheight,
                child: Row(
                  children: [
                    Text(
                      "맛집 2",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
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
                  color: Colors.yellow[300],
                  borderRadius: BorderRadius.circular(15),
                ),
                width: Boxwidth,
                height: Boxheight,
                child: Row(
                  children: [
                    Text(
                      "맛집 3",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ],
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

import 'package:atr_burger/page/orderlist.dart';
import 'package:atr_burger/page/userpage.dart';
import 'package:atr_burger/tabbarscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class Screen extends StatefulWidget {
   Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  //_CurrentIndex = variable for currentIndex value
  int _CurrentIndex = 0;
  List<Widget> widgetList = [
    TabBarScreen(),
    OrderList(),
    UserPage()
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: widgetList[_CurrentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.white,
        selectedItemColor: Color(0xffFFB103),
        backgroundColor: Color(0xff151515),
        selectedIconTheme: IconThemeData(color: Color(0xffFFB103)),
        //currentIndex = the selected item from navigation bar
        currentIndex: _CurrentIndex,
        items:  const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home"
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.money),
          label: "Cart"
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.people),
          label: "User"
          ),
      ],
      onTap: (index) {
        setState(() {
          _CurrentIndex = index;
        });
      },
      ),
      
    );
  }
}
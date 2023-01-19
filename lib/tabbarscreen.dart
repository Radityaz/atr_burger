import 'package:atr_burger/page/burgerpage.dart';
import 'package:atr_burger/page/drinkpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TabBarScreen extends StatelessWidget {
  const TabBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("GRAB YOUR",style: TextStyle(fontWeight: FontWeight.bold),),
              Text("Favorite burger and drink.",style: TextStyle(fontSize: 12),)
            ],
          ),
          elevation: 0,
          automaticallyImplyLeading: false,
          bottom: TabBar(tabs: [
          Tab(text: "Burgers",),
          Tab(text: "Drinks",)
        ]),),
        body: TabBarView(children: [
          BurgerSection(),
          DrinkSection()
        ]),
      ),
    );
  }
}
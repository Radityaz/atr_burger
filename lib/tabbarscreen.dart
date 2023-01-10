import 'package:atr_burger/page/BurgerPage.dart';
import 'package:atr_burger/page/DrinkPage.dart';
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
          elevation: 0,
          automaticallyImplyLeading: false,
          bottom: TabBar(tabs: [
          Tab(text: "Burgers",),
          Tab(text: "Drinks",)
        ]),),
        body: TabBarView(children: [
          BurgerPage(),
          DrinkPage()
        ]),
      ),
    );
  }
}
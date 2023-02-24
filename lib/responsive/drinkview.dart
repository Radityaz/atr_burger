import 'package:atr_burger/page/burgerpage.dart';
import 'package:atr_burger/page/burgerpageTablet.dart';
import 'package:atr_burger/page/drinkpage.dart';
import 'package:atr_burger/page/drinkpageresponsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DrinkResponisve extends StatelessWidget {
  const  DrinkResponisve({super.key});

  @override
  Widget build(BuildContext context) {
    final currentwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: currentwidth < 600 ? DrinkSection() : DrinkSectionTablet(),
    );

  }
}
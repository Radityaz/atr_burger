import 'package:atr_burger/page/burgerpage.dart';
import 'package:atr_burger/page/burgerpageTablet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BurgerResponisve extends StatelessWidget {
  const  BurgerResponisve({super.key});

  @override
  Widget build(BuildContext context) {
    final currentwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: currentwidth < 600 ? BurgerSection() : BurgerSectionTablet(),
    );

  }
}
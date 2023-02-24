import 'package:atr_burger/page/descriptionpage.dart';
import 'package:atr_burger/page/descriptionpageresponsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DescriptionView extends StatelessWidget {
  int Indexs = 0;
  DescriptionView({required this.Indexs});

  @override
  Widget build(BuildContext context) {
    final currentwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: currentwidth < 600 ? DescriptionPage(Index: Indexs,) : DescriptionPageTablet(Index: Indexs,),
    );
  }
}
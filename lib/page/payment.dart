import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("Ini Payment")),
          ElevatedButton(onPressed: () {Navigator.pop(context);}, child: Text("Proceed to buy"))
        ],
      ),
    );
  }
}
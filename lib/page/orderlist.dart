import 'package:atr_burger/page/payment.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class OrderList extends StatelessWidget {
  const OrderList({super.key});

  @override
  Widget build(BuildContext context) {
return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("Ini Usersetting")),
          ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Payment()));}, child: Text("Order Now"))
        ],
      ),
      
    );
  }
}
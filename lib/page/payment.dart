import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../controller/countercontroller.dart';

class Payment extends StatelessWidget {
   Payment({super.key});
   final counterC = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("Ini Payment")),
          ElevatedButton(onPressed: () {counterC.paymentsuccess(); Navigator.pop(context);}, child: Text("Proceed to buy"))
        ],
      ),
    );
  }
}
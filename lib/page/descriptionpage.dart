import 'dart:ui';

import 'package:atr_burger/controller/countercontroller.dart';
import 'package:atr_burger/model/productmodel.dart';
import 'package:atr_burger/page/orderlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class DescriptionPage extends StatelessWidget {
  DescriptionPage({required this.Index});
  // buat final untuk memanggil controller
  //final %nama% = Get.put(%nama class controller%);
  final counterC = Get.put(CounterController());
  int price = 25;

  int Index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
              height: MediaQuery.of(context).size.height * 0.40,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 240,
                    width: 240,
                    child: Image.asset(Product.products[Index].image, fit: BoxFit.contain,),
                  )
                ],
              )),
          Container(
            color: Colors.grey,
            height: MediaQuery.of(context).size.height * 0.45,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.10,
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 15),
                        width: MediaQuery.of(context).size.width * 0.50,
                        child: Text(
                          Product.products[Index].name,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 15),
                        alignment: Alignment.centerRight,
                        width: MediaQuery.of(context).size.width * 0.50,
                        child: Text(Product.products[Index].calorie.toString() + "Kcal"),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  alignment: Alignment.centerLeft,
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    Product.products[Index].description,
                    maxLines: 5,
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.10,
                  child: Row(
                    children: [
                      Align(
                        child: Container(
                            width: MediaQuery.of(context).size.width * 0.50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  alignment: Alignment.centerLeft,
                                  onPressed: () {
                                    counterC.decrement();
                                  },
                                  icon: Icon(
                                    Icons.remove_circle,
                                    size: 30,
                                  ),
                                  //Obx adalah sebuah class
                                  //fungsi obx adalah untuk merubah tampilan suatu element di dalam dungsi obx
                                  //untuk memanggil variable, jangan lupa tambahkan class controller lewat final variable di atas @override
                                ),
                                Container(
                                  width: 65,
                                    // margin: EdgeInsets.only(left: 30, right: 30),
                                    child: Obx((() => Text(
                                          "${counterC.productcount}",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        )))),
                                IconButton(
                                  alignment: Alignment.centerRight,
                                    onPressed: () {
                                      //nama class controller lalu void yang dituju
                                      counterC.increment();
                                    },
                                    icon: Icon(Icons.add_circle, size: 30))
                              ],
                            )),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 15),
                        alignment: Alignment.centerLeft,
                        width: MediaQuery.of(context).size.width * 0.50,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Total Price",
                              style: TextStyle(fontSize: 9),
                            ),
                            Obx((() => Text("IDR ${counterC.productcount * Product.products[Index].price} K ",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold))))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(left: 15, right: 15),
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                        onPressed: () {

                          counterC.addProduct(Product.products[Index]);
                        }, child: Text("Add to Cart")))
              ],
            ),
          )
        ],
      ),
    );
  }
}


// Container( alignment: Alignment.center, color: Colors.grey, width: 25,height: 25, child: Text("+",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),),
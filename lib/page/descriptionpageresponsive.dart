import 'dart:ui';

import 'package:atr_burger/controller/countercontroller.dart';
import 'package:atr_burger/model/productmodel.dart';
import 'package:atr_burger/page/orderlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class DescriptionPageTablet extends StatelessWidget {
  DescriptionPageTablet({required this.Index});
  // buat final untuk memanggil controller
  //final %nama% = Get.put(%nama class controller%);
  final counterC = Get.put(CounterController());
  int price = 25;

  int Index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Color(0xff151515),
      appBar: AppBar(backgroundColor: Colors.black),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width * 0.50,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.50,
                    width: MediaQuery.of(context).size.width * 0.50,
                    child: Image.asset(Product.products[Index].image, fit: BoxFit.contain,),
                  )
                ],
              )),
          Container(
            color: Colors.black,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * 0.50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          Product.products[Index].name,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 15),
                        alignment: Alignment.centerRight,
                        child: Text(Product.products[Index].calorie.toString() + "Kcal", style: TextStyle(color: Colors.white),),
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
                    style: TextStyle(fontSize: 12,color: Colors.white),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.10,
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.25,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  alignment: Alignment.centerLeft,
                                  onPressed: () {
                                    counterC.decrement();
                                  },
                                  icon: Icon(
                                    Icons.remove_circle,
                                    size: 30,color: Color(0xffFFB103)
                                  ),
                                  //Obx adalah sebuah class
                                  //fungsi obx adalah untuk merubah tampilan suatu element di dalam dungsi obx
                                  //untuk memanggil variable, jangan lupa tambahkan class controller lewat final variable di atas @override
                                ),
                                Container(
                                    // margin: EdgeInsets.only(left: 30, right: 30),
                                    child: Obx((() => Text(
                                          "${counterC.productcount}",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,color: Colors.white),
                                        )))),
                                IconButton(
                                  alignment: Alignment.centerRight,
                                    onPressed: () {
                                      //nama class controller lalu void yang dituju
                                      counterC.increment();
                                    },
                                    icon: Icon(Icons.add_circle, size: 30,color: Color(0xffFFB103)))
                              ],
                            )),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.20,
                        padding: EdgeInsets.only(left: 15),
                        alignment: Alignment.centerLeft,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Total Price",
                              style: TextStyle(fontSize: 9,color: Colors.white),
                            ),
                            Obx((() => Text("IDR ${counterC.productcount * Product.products[Index].price} K ",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white))))
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
                      style: ElevatedButton.styleFrom(
                                primary: Color(0xffFFB103)),
                        onPressed: () {

                          counterC.addProduct(Product.products[Index]);
                        }, child: Text("Add to Cart",style: TextStyle(color: Colors.black),)))
              ],
            ),
          )
        ],
      ),
    );
  }
}


// Container( alignment: Alignment.center, color: Colors.grey, width: 25,height: 25, child: Text("+",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),),
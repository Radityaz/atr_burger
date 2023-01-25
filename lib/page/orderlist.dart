import 'package:atr_burger/controller/countercontroller.dart';
import 'package:atr_burger/model/productmodel.dart';
import 'package:atr_burger/page/payment.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class OrderList extends StatelessWidget {
   OrderList({super.key});
    final counterC = Get.put(CounterController());
  final CounterController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "ON THE GO",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "See the food and drink you order.",
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
        ),
        body: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(left: 15, right: 15, top: 15),
              child: ListView.separated(
                itemCount: controller.products.length,
                itemBuilder: (context, index) {
                  return CartProductCart(
                    controller: controller,
                    product: controller.products.keys.toList()[index],
                    index: index,
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Divider(
                    height: 10,
                    thickness: 3,
                    color: Colors.black,
                  );
                },
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container( 
                  margin: EdgeInsets.only(left: 15,right:15),
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height * 0.12,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container( width: MediaQuery.of(context).size.width * 0.45, child: Text("TOTAL "),),
                      Container( width: MediaQuery.of(context).size.width * 0.45, child: Text("PRICE",textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.bold),),)
                    ],
                  ),
                ),
                    ElevatedButton(
                      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (builder)=>Payment()));}, child: Container(width: MediaQuery.of(context).size.width, child: Text("Order Now",textAlign: TextAlign.center,),)),
                    ],
                  )
                ),
              ],
            )
          ],
        ));
  }
}

class CartProductCart extends StatelessWidget {
  final CounterController controller;
  final Product product;
  final int index;
  const CartProductCart({
    Key? key,
  required this.controller,
  required this.product,
  required this.index,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      height: MediaQuery.of(context).size.height * 0.10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.25,
            child: Image.asset(
              product.image
            ),
          ),
          Container(
            // color: Colors.blue,
            width: MediaQuery.of(context).size.width * 0.30,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: TextStyle(
                      fontSize: 13, fontWeight: FontWeight.bold),
                ),
                Text(product.price.toString() + " K")
              ],
            ),
          ),
          Container(
              child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.remove_circle),
              ),
              Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: Text(
                    "0",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.add_circle))
            ],
          ))
        ],
      ),
    );
  }
}




                
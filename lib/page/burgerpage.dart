import 'dart:ui';

import 'package:atr_burger/controller/countercontroller.dart';
import 'package:atr_burger/model/productmodel.dart';
import 'package:atr_burger/page/descriptionpage.dart';
import 'package:atr_burger/responsive/descriptionview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class BurgerSection extends StatelessWidget {
  BurgerSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff151515),
        body: Container(
      margin: EdgeInsets.only(left: 15, right: 15),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            mainAxisExtent: 230),
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          return CatalogProductCart(index: index);
        },
      ),
    )
    );
  }
}

class CatalogProductCart extends StatelessWidget {
  final int index;
  final counterC = Get.put(CounterController());
  CatalogProductCart({super.key,required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DescriptionView(Indexs: index)));
                  counterC.reset();
            },
            child: Container(
              // color: Colors.amber,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 110,
                    height: 110,
                    child: Image.asset(Product.products[index].image, fit: BoxFit.cover, ),
                  ),
                  Divider(
                    thickness: 2,
                    color: Colors.white,
                    indent: 10,
                    endIndent: 10,
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 10,bottom: 5),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "${Product.products[index].name}",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold,color: Color(0xffFFB103)),
                      )),
                  Container(
                      margin: EdgeInsets.only(left: 10),
                      alignment: Alignment.centerLeft,
                      child: Text("${Product.products[index].description}",
                          style: TextStyle(
                            fontSize: 9,
                            color: Colors.white
                          ))),
                  Container(
                      margin: EdgeInsets.only(right: 10),
                      alignment: Alignment.centerRight,
                      child: Text("${Product.products[index].price} K",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold,color: Colors.white)))
                ],
              ),
            ),
          );
  }
}


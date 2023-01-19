import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DescriptionPage extends StatelessWidget {
  const DescriptionPage({super.key});

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
                    color: Colors.black,
                    height: 240,
                    width: 240,
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
                          "TITLE",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 15),
                        alignment: Alignment.centerRight,
                        width: MediaQuery.of(context).size.width * 0.50,
                        child: Text("VAR KCAL"),
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
                    "A burger made with lamb meat and special blue cheese, a perfect combination for sour and savory flavor. a great energy punch for protein, double the protein. Don't forget the puffy buns and oily garlic.",
                    maxLines: 5,
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.10,
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.50,
                        child: Row(children: [
                          IconButton(onPressed: () {}, icon: Icon(Icons.remove_circle,size: 30,),
                          ),Container(margin: EdgeInsets.only(left: 35,right: 35), child: Text("0",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                          IconButton(onPressed: () {}, icon: Icon(Icons.add_circle,size: 30))
                        ],)
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
                            Text("VAR IDR",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                      
                    ],
                  ),
                ),
                Container( margin: EdgeInsets.only(left: 15,right: 15), width: MediaQuery.of(context).size.width ,child: ElevatedButton(onPressed: () {}, child: Text("Add to Cart")))
              ],
            ),
          )
        ],
      ),
    );
  }
}


// Container( alignment: Alignment.center, color: Colors.grey, width: 25,height: 25, child: Text("+",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),),
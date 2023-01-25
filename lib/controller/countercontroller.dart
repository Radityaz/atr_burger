import 'package:atr_burger/model/productmodel.dart';
import 'package:get/get.dart';

//getx class 
class CounterController extends GetxController {
  //jangan lupa tambah .obs (Observer)
  //tambahkan Rx bila ingin membuat data observer/obs
  //obs adalah data yang akan dirubah bila suatu hal terjadi kepada variable tersebut 
  RxInt productcount = 0.obs;
  //membuat dictionary
  var _products = {}.obs;

  void reset() {
    productcount = 1.obs;
  }

  void increment() {
  productcount + 1;
  } 

  void decrement() {
  if (productcount > 1) {
     productcount - 1; 
  }
  } 

  //menambahkan barang
  void addProduct(Product product) {
    if (_products.containsKey(product)) {
      _products[product] +=1;
    } else {
      _products[product] = 1;
    }
    Get.snackbar("Product Added", "You have added the ${product.name} to the cart");
    SnackPosition: SnackPosition.BOTTOM;
    duration: Duration(seconds: 2);
  }

  //menemukan id barang di dalam _products
  get products => _products;



}
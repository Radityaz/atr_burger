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
      _products[product] +=productcount.toInt();
    } else {
      _products[product] = productcount.toInt();
    }
    Get.snackbar("Product Added", "You have added the ${product.name} to the cart");
    SnackPosition: SnackPosition.BOTTOM;
    duration: Duration(seconds: 2);
  }

  //menemukan id barang di dalam _products
 

  void addoneproduct(Product product) {
      if (_products.containsKey(product)) {
      _products[product] +=1;
    } else {
      _products[product] = 1;
    }
  }

  //mengurangi barang
  void removeproduct(Product product) {
    if (_products.containsKey(product) && _products[product] == 1) {
      _products.removeWhere((key, value) => key == product);
    } else {
      _products[product] -=1;
    }
  }

  get products => _products;

  get ProductSubtotal => _products.entries.map((product) => product.key.price * product.value).toList();
  
get total => _products.entries.map((product) => product.key.price * product.value).toList().reduce((value, element) => value + element).toString();

String listShoppingCartTotal() => products.isNotEmpty
      ? products.entries
          .map((product) => product.key.price! * product.value)
          .toList()
          .reduce((value, element) => value + element)
          .toStringAsFixed(0)
      : '0';
}
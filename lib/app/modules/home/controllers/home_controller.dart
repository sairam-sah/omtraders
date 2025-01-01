import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
final Rx<int> selectedIndex = 0.obs; 
final screens = [Container(color:Colors.green),Container(color:Colors.blue),Container(color:Colors.yellow),Container(color:Colors.pink)];

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }


}

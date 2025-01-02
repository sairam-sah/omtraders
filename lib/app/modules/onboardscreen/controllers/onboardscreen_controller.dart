import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardscreenController extends GetxController {
  //TODO: Implement OnboardscreenController

//  Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;


// Update Current Index when Page Scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

// Jump to the specific dot selected page
  void dotNavigationClick(index){
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

//Update Current Index and jump to next page 
 void nextPage() {}

//Update Current Index and Jump to the last Page
 void skipPage() {
  currentPageIndex.value = 2;
  pageController.jumpTo(2);
   }

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

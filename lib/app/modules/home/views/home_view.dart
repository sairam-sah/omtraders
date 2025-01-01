import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SingleChildScrollView(
      child: Column(
       children: [
        Container(
          color:Get.theme.colorScheme.primary ,
          padding: EdgeInsets.all(0),
          child: Stack(
            children: [
              Circular(
                backgroundColor: Colors.white, 
              )
            ],
          ),
        )
       ], 
      ),
    ),
    
    );
  }
}

class Circular extends StatelessWidget {
  const Circular({
    super.key,
    this.child,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.padding = 0,
    this.backgroundColor = Colors.white,
  
  });

  final double? width;
  final double? height;
  final double radius;
  final double padding;
  final Widget? child;
  final Color backgroundColor;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor
      ),
      child: child,
    );
  }
}



//  bottomNavigationBar: Obx(
//        () => NavigationBar(
//           height: 50,
//           elevation: 0,
//           selectedIndex: controller.selectedIndex.value,
//           onDestinationSelected: (index) => controller.selectedIndex.value = index,
//           destinations: const [
//             NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
//             NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
//             NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
//             NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
//           ]),
//      ),
//       body:Obx( () => controller.screens[controller.selectedIndex.value] ,
//     )
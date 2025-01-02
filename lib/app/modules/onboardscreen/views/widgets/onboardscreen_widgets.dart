import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:omtraders/app/modules/onboardscreen/controllers/onboardscreen_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/values/s_dimension.dart';

class onBoardPage extends StatelessWidget {
  const onBoardPage({
    super.key, required this.image, required this.title, required this.subTitle,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Image(
            width:MediaQuery.of(context).size.width * 0.8,
            height:MediaQuery.of(context).size.height * 0.6,
            image: AssetImage(image)
          ),
          Text(title,style:TextStyle(
              fontSize: Get.width * 0.05, // Dynamic text size (5% of screen width)
              color: Get.isDarkMode ? Colors.white : Colors.black, // Change color based on theme
              fontWeight: FontWeight.bold,
          ) ,),
           Text(subTitle,style:TextStyle(
              fontSize: Get.width * 0.02, // Dynamic text size (5% of screen width)
              color: Get.isDarkMode ? Colors.white : Colors.black, // Change color based on theme
              fontWeight: FontWeight.bold,
          ) ,),
        ]
      ),
    );
  }
}


class skipWidget extends StatelessWidget {
  const skipWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: SDimension.jumbo,
      right:SDimension.jumbo ,
      child: TextButton(onPressed: () => OnboardscreenController.skipPage(), child: const Text('Skip')));
  }
}

class onboardingDotNavigattion extends StatelessWidget {
  const onboardingDotNavigattion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardscreenController.instance;

    return Positioned(
      bottom:SDimension.epic ,
      left:SDimension.colossal ,
      child: SmoothPageIndicator(
      controller:controller.pageController,
      onDotClicked: controller.dotNavigationClick,
       count: 3,
       effect: const ExpandingDotsEffect(activeDotColor: Colors.black,dotHeight: 6),));
  }
}


class onbardingNextBotton extends StatelessWidget {
  const onbardingNextBotton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: SDimension.colossal,
      bottom: SDimension.colossal,
      child: ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(shape:const CircleBorder()),
       child: const Icon(Iconsax.arrow_right_3)));
  }
}

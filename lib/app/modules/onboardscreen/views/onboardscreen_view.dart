import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/onboardscreen_controller.dart';
import 'widgets/onboardscreen_widgets.dart';

class OnboardscreenView extends GetView<OnboardscreenController> {
  const OnboardscreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Horizontal scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
             children: [
              onBoardPage(image: 'assets/Image/onboard_screens/wired-flat-146-trolley-hover-jump.gif',
              title: 'Choose your product',
              subTitle: 'Welcome to the world of limitless choices. Your perfect productt awaits',),
              
               onBoardPage(image: 'assets/Image/onboard_screens/wired-flat-146-trolley-hover-jump.gif',
              title: 'Choose your product',
              subTitle: 'Welcome to the world of limitless choices. Your perfect productt awaits',),

               onBoardPage(image: 'assets/Image/onboard_screens/wired-flat-146-trolley-hover-jump.gif',
              title: 'Choose your product',
              subTitle: 'Welcome to the world of limitless choices. Your perfect productt awaits',),
             ]
          ),

          // Skip bottom
          skipWidget(),


          //smooth page indicator
          onboardingDotNavigattion(),

          //Circular botom
          onbardingNextBotton()

        ]
      )
    );
  }
}






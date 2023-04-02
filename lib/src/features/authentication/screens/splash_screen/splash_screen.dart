import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mehahackuser/src/constants/color.dart';


import 'package:mehahackuser/src/constants/image_strings.dart';
import 'package:mehahackuser/src/constants/sizes.dart';
import 'package:mehahackuser/src/constants/text_strings.dart';
import 'package:mehahackuser/src/features/authentication/controllers/splash_screen_controller.dart';
import 'package:mehahackuser/src/features/authentication/screens/welcome/welcome_screen.dart';
class SplashScreen extends StatelessWidget {
   SplashScreen({Key? key}) : super(key: key);

   final splashController = Get.put(SplashScreenController());








  @override
  Widget build(BuildContext context) {
    splashController.startanimation();
    return Scaffold(
      body: Stack(
        children: [
          Obx(() => AnimatedPositioned(
              duration: const Duration(milliseconds: 3600) ,
              top: splashController.animate.value? 0: -30,
              left: splashController.animate.value? 0: -30,
              width: 150,
              height: 150,
              child: Image(image: AssetImage(ASplashTopIcon) ,
              ),
            ),
          ),
          Obx(()=> AnimatedPositioned(
              duration: const Duration(milliseconds: 2600),
              top: 120,
              left:splashController.animate.value?  40: -80,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 2600),
                opacity: splashController.animate.value? 1: 0,

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(AAppName,style: Theme.of(context).textTheme.headline3),
                    Text(AAppTagLine,style: TextStyle(fontSize: 30,letterSpacing: 0.5)),
                  ],
                ),
              ) ,
    ),
          ),
          Obx(() => AnimatedPositioned(
              duration: const Duration(milliseconds: 3400),
              bottom: splashController.animate.value?100:0,
              width: 450,
              height: 450,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 3000),
                opacity: splashController.animate.value? 1:0,
                child: Image(image: AssetImage(ASplashImage) ,
                ),
              ),
            ),
          ),
          Obx(() => AnimatedPositioned(
              duration: const Duration(milliseconds: 4300),
              bottom: splashController.animate.value? 50: 0,
              right: 40,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 3000),
                opacity: splashController.animate.value? 1:0,
                child: Container(
                  width: ASplashContainerSize,
                  height: ASplashContainerSize,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: APrimaryColor ,
                  ),

                ),
              ) ,
              ),
          ),




        ],
      ),
    );
  }



}

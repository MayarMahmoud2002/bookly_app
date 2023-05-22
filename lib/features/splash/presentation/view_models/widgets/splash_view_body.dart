import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/features/home/views/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../constances.dart';

class SplashViewBody extends StatefulWidget {
  static const String routeName = "SplashViewBody";

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}
//singleTicker => control with rate of Animations
class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late  Animation<Offset> slidingAnimation;

  @override
  void initState() {
    initAnimation();
    navigateToHome();

  }

  @override
  void dispose() {
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        SlideTransition(
          position: slidingAnimation,
          child: Text(
            'Read Books Online',
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
  void navigateToHome()
  {
    Future.delayed(const Duration(seconds: 3),()
    {
      Get.to(()=> HomeScreen() , transition:Transition.rightToLeft , duration: kDuration);
    });

  }
  void initAnimation()
  {
    animationController = AnimationController(vsync:this  , duration: const Duration(seconds: 1));
    slidingAnimation = Tween<Offset>(begin:Offset(0,10) , end: Offset.zero).animate(animationController);
    animationController.forward();


    slidingAnimation.addListener(() {

      setState(() {

      });
    });
  }
}

import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

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
    animationController = AnimationController(vsync:this  , duration: const Duration(seconds: 1));
    slidingAnimation = Tween<Offset>(begin:Offset(0, 1) , end: Offset.zero).animate(animationController);
    animationController.forward();
    slidingAnimation.addListener(() {

      setState(() {

      });
    });


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
}

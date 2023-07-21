import 'package:flutter/material.dart';
import '../../widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  static const String routeName = " SplashScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(16, 11, 32, 1.0),
      body: SplashViewBody(),
    );
  }
}

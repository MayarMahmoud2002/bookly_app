
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'constances/contants.dart';
import 'features/splash/presentation/splash_view/splash_view.dart';



void main() {
  runApp(  BooklyApp());
}

class BooklyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(scaffoldBackgroundColor: primaryColor),
      home: SplashView(),
    );
  }

}

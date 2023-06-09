import 'package:bookly_app/constances.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/splash/presentation/view_models/views/splash_view.dart';


void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget
{
  const BooklyApp ({Key? key }) : super (key:key);

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor),
      home: SplashView(),
    );

  }

}
import 'dart:ui';

import 'package:bookly_app/features/home/presentarion/views/book_details_view/book_details_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'constances/contants.dart';
import 'core/utils/app_router.dart';
import 'features/home/presentarion/views/home_view/home_view.dart';

void main()
{
  runApp(BooklyApp());
}
class BooklyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: primaryColor),

    );

  }

}


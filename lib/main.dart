import 'package:bookly_app/features/home/presentarion/views/book_details_view/book_details_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'constances/contants.dart';
import 'features/home/presentarion/views/home_view/home_view.dart';

void main()
{
  runApp(BooklyApp());
}
class BooklyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: primaryColor),
      home: BookDetailsView(),

    );
    // return  GetMaterialApp(
    //
    //   debugShowCheckedModeBanner: false,
    //   theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: primaryColor),
    //   home: HomeView(),
    // );
  }

}

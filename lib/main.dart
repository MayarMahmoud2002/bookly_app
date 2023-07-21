
import 'package:flutter/material.dart';
import 'constances/contants.dart';
import 'core/utils/app_router.dart';

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


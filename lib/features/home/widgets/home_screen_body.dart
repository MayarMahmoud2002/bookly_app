import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar.dart';


class HomeScreenBody extends StatelessWidget {
  static const String routeName = "HomeScreenBody";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         CustomAppbar(),
      ],
    );
  }
}

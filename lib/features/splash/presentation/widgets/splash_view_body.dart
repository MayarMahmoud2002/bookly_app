import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  static const String routeName = "SplashViewBody";

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(AssetsData.logo ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'Read Free Books',
            textAlign: TextAlign.center,

          ),
        ],
    );
  }
}

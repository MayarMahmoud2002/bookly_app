import 'package:flutter/material.dart';

import '../../../core/utils/assets.dart';

class CustomAppbar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0 , vertical: 60.0),
      child: Row(
        children: [
          Image.asset(AssetsData.logo,
            height: 18.1,
          ),
          Spacer(),
          Icon(Icons.search,
            size: 24.0,
          ),


        ],
      ),
    );
  }
}

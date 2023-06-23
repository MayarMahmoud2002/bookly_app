import 'package:flutter/material.dart';

import '../../../../../../core/utils/assets.dart';

class Appbar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 45.0 , horizontal: 20.0),
      child: Row(
        children: [
          Image.asset(AssetsData.logo, width: 100.0,),
          Spacer(),
          Icon(Icons.search,
            size: 35,
          ),
        ],
      ),
    );
  }
}

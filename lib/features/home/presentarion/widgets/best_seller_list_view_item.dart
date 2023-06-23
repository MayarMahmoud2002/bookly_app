import 'package:flutter/material.dart';

import '../../../../core/utils/assets.dart';

class BestSellerListViewItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 130.0,
          child:  Container(
            child:  AspectRatio(aspectRatio: 2.7 / 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              image:  DecorationImage(
                  fit: BoxFit.fill, image: AssetImage(AssetsData.firstImage)),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../home_widgets/custom.dart';
class ButtonAction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomButton(
          text: '9.99£',
          backGroundColor: Colors.white,
          textColor: Colors.black,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(12) , bottomLeft: Radius.circular(12)),
        )),
        Expanded(child:  CustomButton(
          text: 'Free Preview',
          backGroundColor: Color(0xffEF8262),
          textColor: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(12) , bottomRight: Radius.circular(12)),
        )),


      ],
    );
  }

}

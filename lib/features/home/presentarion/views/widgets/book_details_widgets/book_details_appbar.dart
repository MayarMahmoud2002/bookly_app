import 'package:flutter/material.dart';

class BookDetailsAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0 , left: 25 , right:25  ),
      child: Row(
          children: [
            Icon(Icons.clear_outlined , size: 25,),
            Spacer(),
            Icon(Icons.shopping_cart_outlined , size: 25,),
          ]
      ),
    );
  }
}

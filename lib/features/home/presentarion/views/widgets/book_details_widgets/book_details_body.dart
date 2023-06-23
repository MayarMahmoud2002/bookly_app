import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          BookDetailsAppbar(),
        ],
      ),
    );
  }
}

class BookDetailsAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 60.0 , horizontal: 25.0 ),
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

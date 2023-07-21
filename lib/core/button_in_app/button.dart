import 'package:flutter/material.dart';
class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        onPressed: () {},
        child: Text(
          '19.99',
          style: TextStyle(
            color: Colors.white,
          ),
        ));
  }
}

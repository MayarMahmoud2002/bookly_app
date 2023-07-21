import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color backGroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final String text;

  const CustomButton({
    super.key,
    required this.backGroundColor,
    required this.textColor,
     this.borderRadius, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              backgroundColor: backGroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(16.0),
              )),
          child: Text(
            text ,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          )),
    );
  }
}

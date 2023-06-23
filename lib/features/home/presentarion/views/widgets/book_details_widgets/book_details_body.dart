
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/features/home/presentarion/views/widgets/book_details_widgets/book_details_appbar.dart';
import 'package:bookly_app/features/home/presentarion/views/widgets/book_details_widgets/book_details_image.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          BookDetailsAppbar(),
          BookDetailsImage(),
        ],
      ),
    );
  }
}


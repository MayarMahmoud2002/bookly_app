import 'package:bookly_app/features/home/presentarion/views/widgets/book_details_widgets/book_details_appbar.dart';
import 'package:bookly_app/features/home/presentarion/views/widgets/book_details_widgets/book_details_image.dart';
import 'package:bookly_app/features/home/presentarion/views/widgets/book_details_widgets/button_action.dart';
import 'package:bookly_app/features/home/presentarion/views/widgets/book_details_widgets/similar_books_list_view.dart';
import 'package:bookly_app/features/home/presentarion/views/widgets/home_widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentarion/views/widgets/home_widgets/list_view_item.dart';
import 'package:flutter/material.dart';

import '../home_widgets/custom.dart';

class BookDetailsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              BookDetailsAppbar(),
              BookDetailsImage(),
              Text(
                'The Jungle Book',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Opacity(
                opacity: .7,
                child: Text(
                  'Rudyard Kipling',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 25.0),
                child: BookRating(
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ButtonAction(),
              SizedBox(
                //expanded
                height: 15.0,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'you can also like',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              SimilarBooksListView(),
              SizedBox(
                height: 40.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'book_rating.dart';

class BestSellerListViewItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()
      {
        GoRouter.of(context).push(AppRouter.kbookDetailsview);
      },
      child: Container(
        height: 125,
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             SizedBox(
              height: 100.0,
              child:   Container(
                child:   AspectRatio(aspectRatio: 2.7 / 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  image:  DecorationImage(
                      fit: BoxFit.fill, image: AssetImage(AssetsData.firstImage)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width*.5,
                    child: Text("Harry Potter and the Goblet of Fire",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    'J.K Rowling',
                    textAlign: TextAlign.start,
                  ),
                  Row(
                    children: [
                      const Text(
                        '19.99 \$',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      BookRating(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

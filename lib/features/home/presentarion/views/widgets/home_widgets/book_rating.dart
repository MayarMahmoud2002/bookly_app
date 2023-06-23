import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start

});
final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Row(
        mainAxisAlignment: mainAxisAlignment,
        children: [
          Icon(
            Icons.star,
            color: Colors.yellowAccent,
          ),
          SizedBox(
            width: 6.3,
          ),
          Text(
            '4.8',
          ),
          SizedBox(
            width: 5.0,
          ),
          Text(''
              '(2390)'),

        ],
      ),
    );
  }
}

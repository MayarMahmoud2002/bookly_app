import 'package:flutter/material.dart';

import 'list_view_item.dart';

class ListViewForItems extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.3,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context , index)
          {
            return  Padding(
              padding: const EdgeInsets.all( 8.0),
              child: ListViewItem(
              ),
            );

          }),
    );
  }
}

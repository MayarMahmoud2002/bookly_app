import 'package:bookly_app/features/home/presentarion/views/widgets/home_widgets/best_seller_list_view_item.dart';
import 'package:bookly_app/features/home/presentarion/views/widgets/home_widgets/custom.dart';
import 'package:bookly_app/features/home/presentarion/views/widgets/home_widgets/list_view_for_items.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import '../widgets/home_widgets/appbar.dart';

class HomeView extends StatelessWidget {
  static const String routeName = "HomeView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Appbar(), // ListViewItem(),
        ListViewForItems(),
        Padding(
          padding: const EdgeInsets.only(top: 40.0, left: 15),
          child: Text(
            'Best Seller',
            style: Styles.titleMedium,
          ),
        ),
        // Padding(
        //   padding: const EdgeInsets.only(top: 15.0, left: 8.0),
        //   child: BestSellerListViewItem(),
        // ),
        BestSellerListView(),

      ],
    )
    );
    // return Column(
    //   crossAxisAlignment: CrossAxisAlignment.start,
    //   children: [
    //     Appbar(), // ListViewItem(),
    //     ListViewForItems(),
    //     Padding(
    //       padding: const EdgeInsets.only(top: 40.0, left: 15),
    //       child: Text(
    //         'Best Seller',
    //         style: Styles.titleMedium,
    //       ),
    //     ),
    //     Padding(
    //       padding: const EdgeInsets.only(top: 15.0, left: 15),
    //       child: BestSellerListViewItem(),
    //     ),
    //   ],
    // );
  }
}
class BestSellerListView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        // shrinkWrap: true,
        // physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
          itemCount: 10,
          itemBuilder: (context , index)
      {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0 , horizontal: 8.0),
          child: BestSellerListViewItem(),
        );
      }),
    );
  }
}




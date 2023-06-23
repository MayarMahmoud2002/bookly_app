import 'package:bookly_app/features/home/presentarion/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import '../../widgets/appbar.dart';
import '../../widgets/list_view_for_items.dart';

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
        Padding(
          padding: const EdgeInsets.only(top: 15.0, left: 8.0),
          child: BestSellerListViewItem(),
        ),
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


import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

import '../../widgets/appbar.dart';
import '../../widgets/list_view_for_items.dart';
import '../../widgets/list_view_item.dart';

class HomeView extends StatelessWidget {
  static const String routeName = "HomeView";

  @override
  Widget build(BuildContext context) {
    return Column(
      children:  [
        Appbar(),
        // ListViewItem(),
        ListViewForItems(),
      ],
    );
  }
}







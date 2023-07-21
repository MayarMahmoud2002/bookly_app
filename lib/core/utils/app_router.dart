import 'package:bookly_app/features/home/presentarion/views/book_details_view/book_details_view.dart';
import 'package:bookly_app/features/home/presentarion/views/home_view/home_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash/presentation/views/splash_view/splash_view.dart';

abstract class AppRouter
{
  static const khomeview = '/home';
  static const kbookDetailsview = '/bookDetail';

  static final router = GoRouter(routes:
  [
    GoRoute(path: '/',
      builder: (context,state) =>  HomeView(),
    ),
    // GoRoute(path:khomeview,
    //   builder: (context,state) =>  HomeView(),
    // ),
    GoRoute(path:kbookDetailsview,
      builder: (context,state) =>  BookDetailsView(),
    )
  ]);

}
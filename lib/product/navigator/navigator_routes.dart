
import 'package:flutter_full_learn/101/navigate_detail_learn.dart';
import 'package:flutter_full_learn/303/navigator/navigate_home_view.dart';

import '../../303/lottie_learn.dart';
import '../../303/navigator/navigate_home_detail_view.dart';

class NavigatorRoutes{
  static const paraf = '/';
  final items = {
        paraf:(context) => LottieLearn(),
        navigateRoutes.home.withParaf:(context) => NavigateHomeView(),
        navigateRoutes.homeDetail.withParaf : (context) => NavigateHomeDetail()
      };
}

enum navigateRoutes{
  init,home,homeDetail
}

extension NavigateRouteExtension on navigateRoutes{

  String get withParaf => '/$name';
}
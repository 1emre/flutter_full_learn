import 'package:flutter/material.dart';
import 'package:flutter_full_learn/303/lottie_learn.dart';
import 'package:flutter_full_learn/303/navigator/navigate_home_detail_view.dart';
import 'package:flutter_full_learn/303/navigator/navigate_home_view.dart';
import 'package:flutter_full_learn/main.dart';
import 'package:flutter_full_learn/product/navigator/navigator_routes.dart';

mixin NavigatorCustom<T extends MyApp> on Widget {
  Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    if (routeSettings.name?.isEmpty ?? true) {
      return _navigateToNormal(LottieLearn());
    }

    if (routeSettings.name == NavigatorRoutes.paraf) {
      return _navigateToNormal(LottieLearn());
    }
    final _routes = routeSettings.name == NavigatorRoutes.paraf
        ? navigateRoutes.init
        : navigateRoutes.values.byName(routeSettings.name!.substring(1));

    switch (_routes) {
      case navigateRoutes.init:
        return _navigateToNormal(LottieLearn());
      case navigateRoutes.home:
        return _navigateToNormal(NavigateHomeView());
      case navigateRoutes.homeDetail:
        final _id = routeSettings.arguments;
        return _navigateToNormal(
            NavigateHomeDetail(
              id: _id is String ? _id : null,
            ),
            isFullScreenDialog: true);
    }

    //   if (routeSettings.name == "/homeDetail") {
    //   final _id = routeSettings.arguments;
    //   return _navigateToNormal(NavigateHomeDetail(
    //     id: _id is String ? _id : null,
    //   ));
    // }

    // return null;
  }

  Route<dynamic>? _navigateToNormal(Widget child, {bool? isFullScreenDialog}) {
    return MaterialPageRoute(
        fullscreenDialog: isFullScreenDialog ?? false,
        builder: (context) => child);
  }
}

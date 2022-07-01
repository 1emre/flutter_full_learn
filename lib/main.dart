import 'package:flutter/material.dart';
import 'package:flutter_full_learn/product/global/resource_contex.dart';
import 'package:flutter_full_learn/product/global/theme_notifer.dart';
import 'package:flutter_full_learn/product/navigator/navigator_custom.dart';
import 'package:flutter_full_learn/product/navigator/navigator_manager.dart';
import 'package:provider/provider.dart';

import '404/block/future/login/view/login_view.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      Provider(
        create: (_) => ResourceContext(),
      ),
      ChangeNotifierProvider<ThemeNotifer>(
        create: (context) => ThemeNotifer(),
      )
    ],
    builder: (context, child) => const MyApp(),
  ));
}

class MyApp extends StatelessWidget with NavigatorCustom {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: context.watch<ThemeNotifer>().currentTheme,
      //theme: ThemeData.light(),

      // ThemeData.dark().copyWith(
      //     tabBarTheme: const TabBarTheme(
      //         indicatorSize: TabBarIndicatorSize.label, labelColor: Colors.green, unselectedLabelColor: Colors.red),
      //     appBarTheme: const AppBarTheme(centerTitle: true, elevation: 0)),
      onGenerateRoute: onGenerateRoute,
      navigatorKey: NavigatorManager.instance.navigatorGlobalKey,
      //routes: NavigatorRoutes().items,
      home: const LoginView(), // home girili olursa diger routerlara bakılmıyor
    );
  }
}

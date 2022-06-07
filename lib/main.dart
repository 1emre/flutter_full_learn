import 'package:flutter/material.dart';

import '202/cache/secure_context/secure_context_learn.dart';
import '202/thema/light_theme.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: LightTheme().theme,
      
      // ThemeData.dark().copyWith(
      //     tabBarTheme: const TabBarTheme(
      //         indicatorSize: TabBarIndicatorSize.label, labelColor: Colors.green, unselectedLabelColor: Colors.red),
      //     appBarTheme: const AppBarTheme(centerTitle: true, elevation: 0)),
      home: ShareContextLearn(),
    );
  }
}

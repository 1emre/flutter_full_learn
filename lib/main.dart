import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/app_bar_learn.dart';
import 'package:flutter_full_learn/101/button_learn.dart';
import 'package:flutter_full_learn/101/text_learn_view.dart';

import '101/card_learn.dart';
import '101/color_learn.dart';
import '101/image_learn.dart';
import '101/navigation_learn.dart';
import '101/page_view_learn.dart';
import '101/stateful_life_cycle_learn.dart';
import '101/statefull_learn.dart';
import '101/text_field_learn.dart';
import '202/model_learn_view.dart';
import '202/service/service_learn_view.dart';
import '202/service/service_post_lear_view.dart';
import '202/tab_learn.dart';
import 'demos/color_demos_view.dart';
import 'demos/color_life_cycle_view.dart';
import 'demos/my_collecions_demos.dart';
import 'demos/note_demos_view.dart';

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
      theme: ThemeData.dark().copyWith(
          tabBarTheme: const TabBarTheme(
              indicatorSize: TabBarIndicatorSize.label, labelColor: Colors.green, unselectedLabelColor: Colors.red),
          appBarTheme: const AppBarTheme(centerTitle: true, elevation: 0)),
      home: ServiceLearn(),
    );
  }
}

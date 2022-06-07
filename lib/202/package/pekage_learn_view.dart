import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/package/launch_manager.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:url_launcher/url_launcher.dart';

import 'loading_bar.dart';

class PekageLearnView extends StatefulWidget {
  PekageLearnView({Key? key}) : super(key: key);

  @override
  State<PekageLearnView> createState() => _PekageLearnViewState();
}

class _PekageLearnViewState extends State<PekageLearnView>
    with TickerProviderStateMixin ,LaunchMixin{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const LoadingBar(),
      floatingActionButton: FloatingActionButton(onPressed: () {
        launchUrls('https://pub.dev/packages/url_launcher/example');
      },),);
  }
}
 
 
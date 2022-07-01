import 'package:flutter/material.dart';
import 'package:flutter_full_learn/303/feed_view.dart';

import '../101/card_learn.dart';
import '../101/image_learn.dart';

class TabAdvanceLearn extends StatefulWidget {
  TabAdvanceLearn({Key? key}) : super(key: key);

  @override
  State<TabAdvanceLearn> createState() => _TabAdvanceLearnState();
}

class _TabAdvanceLearnState extends State<TabAdvanceLearn> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: _MyTabViews.values.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _MyTabViews.values.length,
        child: Scaffold(
          extendBody: true,
          // appBar: AppBar(
          //   bottom:  TabBar(controller: _tabController,
          //     tabs: const [
          //       Tab(
          //         text: 'Page1',
          //       ),
          //       Tab(
          //         text: 'Page2',
          //       )
          //     ],
          //   ),
          // ),
          body: TabBarView(
            controller: _tabController,
            physics: NeverScrollableScrollPhysics(), //sag sol scroll kapatıyor
            children: [
              FeedView(),
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.green,
              ),
              ImageLearn(),
              CardLearn()
            ],
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              _tabController.animateTo(0);
            },
          ),
          bottomNavigationBar: BottomAppBar(
            notchMargin: 10,
            shape: const CircularNotchedRectangle(),
            child: TabBar(
              controller: _tabController, indicatorColor: Colors.white, //labelColor: Colors.green,
              //unselectedLabelColor: Colors.red,
              //tabs: [Tab(text: 'Page1'), Tab(text: 'Page2')],
              tabs: _MyTabViews.values.map((e) => Tab(text: e.name)).toList(),
            ),
          ),
        ));
  }
}

enum _MyTabViews { deneme,home, settings, favorite, profile }

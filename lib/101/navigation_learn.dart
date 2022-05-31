// listye basınca saga gitsin geri gelince place holder yesil olsun

import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/card_learn.dart';

import 'navigate_detail_learn.dart';

class NavigationLearn extends StatefulWidget {
  NavigationLearn({Key? key}) : super(key: key);

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn> with NavigatorManager {
  List<int> selectedItems = [];

  void addSelected(int index,bool isAdd) {
    setState(() {
      isAdd ? selectedItems.add(index) : selectedItems.remove(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (contex, index) {
        return TextButton(
          onPressed: () async {
            final response = await navigateToWidgetNormal<bool>(context, NavigateDetailLearnDart(isOkey: selectedItems.contains(index),));
            if (response is bool) {
              addSelected(index,response);
            }
          },
          child:  Padding(
            padding: const EdgeInsets.all(8.0),
            child: Placeholder(
              color: selectedItems.contains(index) ? Colors.green : Colors.red,
            ),
          ),
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final response = await navigateToWidgetNormal<bool>(context, NavigateDetailLearnDart());
          if (response == true) {}
        },
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}

mixin NavigatorManager {
  void navigateToWidget(BuildContext context, Widget widget) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => widget));
  }

  Future<T?> navigateToWidgetNormal<T>(BuildContext context, Widget widget) {
    return Navigator.of(context).push<T>(MaterialPageRoute(builder: (context) => widget));
  }
}

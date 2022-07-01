import 'package:flutter/material.dart';
import 'package:flutter_full_learn/product/navigator/navigator_manager.dart';
import 'package:flutter_full_learn/product/navigator/navigator_routes.dart';

import '../../product/mixin/navigator_mixin.dart';

class NavigateHomeView extends StatefulWidget {
  const NavigateHomeView({Key? key}) : super(key: key);

  @override
  State<NavigateHomeView> createState() => _NavigateHomeViewState();
}

class _NavigateHomeViewState extends State<NavigateHomeView> with NavigatorMixin{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.abc_outlined),
        onPressed: () {
          router.pushToPage(navigateRoutes.homeDetail ,arguments: "vb10");//mixin kullanılmıs halı 
        //  NavigatorManager.instance.pushToPage(navigateRoutes.homeDetail ,arguments: "vb10"); // managerden cekilmis hali
        //Navigator.of(context).pushNamed(navigateRoutes.homeDetail.withParaf,arguments: "abc");
      },),
      appBar: AppBar(
        title: Text(toString()),
      ),
    );
  }
}

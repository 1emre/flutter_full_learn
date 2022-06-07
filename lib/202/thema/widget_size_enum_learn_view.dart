import 'package:flutter/material.dart';

class WidgetSizeEnumLearnView extends StatefulWidget {
  WidgetSizeEnumLearnView({Key? key}) : super(key: key);

  @override
  State<WidgetSizeEnumLearnView> createState() =>
      _WidgetSizeEnumLearnViewState();
}

class _WidgetSizeEnumLearnViewState extends State<WidgetSizeEnumLearnView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Card(
        child: Container(
          height: WidgetSizes.NormalCardHeight.value(),
          color:  Colors.green,
        ),
      ),
    );
  }
}


enum WidgetSizes{
  NormalCardHeight,circleProfileWidh
}

extension WidgetSizeExtension on WidgetSizes {
    double value(){
      switch (this) {
        
        case WidgetSizes.NormalCardHeight:
          return 30;
        case WidgetSizes.circleProfileWidh:
          return 25; 
      }
    }
}
//bir ekran olucak
//Bu ekranda 3 button ve butonlara basınca renk değişimi olacak
//Secili olan button selected icon olsun

import 'dart:developer';

import 'package:flutter/material.dart';

class ColorDemos extends StatefulWidget {
  const ColorDemos({Key? key,this.initialColor}) : super(key: key);

  final Color? initialColor;

  @override
  State<ColorDemos> createState() => _ColorDemosState();
}

class _ColorDemosState extends State<ColorDemos> {
  Color? _backroundColor;
  int _index = 0;

  @override
  void initState() {
    super.initState();
    _backroundColor = widget.initialColor ?? Colors.transparent;  
  }

  @override
  void didUpdateWidget(covariant ColorDemos oldWidget) {
    super.didUpdateWidget(oldWidget);
    inspect(widget);
    if (oldWidget.initialColor != _backroundColor && widget.initialColor != null) _changeBackroundColor(widget.initialColor!);
  }

  void _changeBackroundColor(Color color) {
    setState(() {
      _backroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backroundColor,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        selectedItemColor: Colors.amber,
        onTap: _colorOnTab,
        items: const [
          BottomNavigationBarItem(
              icon: _ColorContainer(
                color: Colors.red,
              ),
              label: ColorsNames.red),
          BottomNavigationBarItem(icon: _ColorContainer(color: Colors.yellow), label: ColorsNames.yellow),
          BottomNavigationBarItem(icon: _ColorContainer(color: Colors.blue), label: ColorsNames.blue)
        ],
      ),
    );
  }

  void _colorOnTab(int value) {
    _index = value;
    if (value == _Mycolors.red.index) {
      _changeBackroundColor(Colors.red);
    } else if (value == _Mycolors.yellow.index) {
      _changeBackroundColor(Colors.yellow);
    } else if (value == _Mycolors.blue.index) {
      _changeBackroundColor(Colors.blue);
    }
  }
}

enum _Mycolors { red, yellow, blue }

class _ColorContainer extends StatelessWidget {
  const _ColorContainer({Key? key, required this.color}) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: 10,
      color: color,
    );
  }
}

class ColorsNames {
  static const String yellow = 'Yellow';
  static const String red = 'Red';
  static const String blue = 'Blue';
}

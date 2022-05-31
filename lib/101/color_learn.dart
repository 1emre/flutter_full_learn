import 'package:flutter/material.dart';

class ColorLearn extends StatelessWidget {
  ColorLearn({Key? key}) : super(key: key);

  final ColorsItems colors = ColorsItems();
  final ColorsItems colors2 = ColorsItems();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Colors'),
      ),
      body: Column(
        children: [
          Container(
            color: colors.porche,
            child: Text('data'),
          ),
          Container(
            color: colors.sulu,
            child: Text('data'),
          )
        ],
      ),
    );
  }
}

class ColorsItems {
  final Color porche = const Color(0xffEDBF61);

  final Color sulu = const Color.fromARGB(192, 237, 97, 1);
}

import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/button_learn.dart';
import 'package:flutter_full_learn/101/color_learn.dart';
import 'package:flutter_full_learn/101/text_learn_view.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({Key? key}) : super(key: key);

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {

  final _controller = PageController(viewportFraction: 0.8);

  int _currentPageIndex = 0;

  void _updatePageIndex(int index){
    setState(() {
      _currentPageIndex = index;
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Deneme'),
      ),
      body: PageView(
        controller: _controller,
        onPageChanged: _updatePageIndex,
        children: [
          ButtonLearn(),
          ColorLearn(),
          TextLearnView()
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(left :20.0),
            child: Text(_currentPageIndex.toString()),
          ),
          Spacer(),
        FloatingActionButton(
          onPressed: () {
            _controller.previousPage(duration: _DurationUtility._durationLow, curve: Curves.slowMiddle);
          },
          child: Icon(Icons.chevron_left),
        ),
        FloatingActionButton(
          onPressed: () {
            _controller.nextPage(duration: _DurationUtility._durationLow, curve: Curves.slowMiddle);
          },
          child: Icon(Icons.chevron_right),
        ),
      ]),
    );
  }
}


class _DurationUtility{
  static const _durationLow = Duration(seconds: 1);
}
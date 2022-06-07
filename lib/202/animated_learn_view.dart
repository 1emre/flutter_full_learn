import 'package:flutter/material.dart';

const double kZore = 0;
class AnimatedLearnView extends StatefulWidget {
  AnimatedLearnView({Key? key}) : super(key: key);

  @override
  State<AnimatedLearnView> createState() => _AnimatedLearnViewState();
}

class _AnimatedLearnViewState extends State<AnimatedLearnView>
    with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: _DurationItems.durationLow);
  }

  bool _isVisible = false;
  bool _isOpacity = false;

  void _changeVisible() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  void _changeOpacity() {
    setState(() {
      _isOpacity = !_isOpacity;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: _placeHolderWidget()),
      //body: Text('data', style: context.textTheme().subtitle1)
      // body: _isVisible ? Placeholder() : SizedBox.shrink(),
      //body: _placeHolderWidget(),
      body: Column(
        children: [
          ListTile(
              title: AnimatedOpacity(
                  duration: _DurationItems.durationLow,
                  opacity: _isOpacity ? 1 : 0,
                  child: const Text('data')),
              trailing:
                  IconButton(onPressed: _changeOpacity, icon: Icon(Icons.abc))),
          AnimatedDefaultTextStyle(
              child: Text('data'),
              style: (_isVisible
                      ? context.textTheme().headline1
                      : context.textTheme().subtitle1) ??
                  TextStyle(),
              duration: _DurationItems.durationLow),
          AnimatedIcon(icon: AnimatedIcons.menu_close, progress: controller),
          AnimatedContainer(
            duration: _DurationItems.durationLow,
            width: MediaQuery.of(context).size.width * 0.2,
            height: _isVisible ? kZore : MediaQuery.of(context).size.height * 0.2,
            color: Colors.red,
          ),
          Expanded(
            child: Stack(children: [AnimatedPositioned(
              top: 20,//kendi icinde kayıyor
              child: Text('para'), duration: _DurationItems.durationLow)],),
          )
          ,
          Expanded(
            child: AnimatedList(
              initialItemCount: 2,
              itemBuilder: (context, index, animation) {

              return const Text('data');
            },),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _changeVisible();
          controller.animateTo(_isVisible ? 1 : 0);
        },
      ),
    );
  }

  AnimatedCrossFade _placeHolderWidget() {
    return AnimatedCrossFade(
        firstChild: const Placeholder(),
        secondChild: const SizedBox.shrink(),
        duration: _DurationItems.durationLow,
        crossFadeState:
            _isVisible ? CrossFadeState.showFirst : CrossFadeState.showSecond);
  }
}

extension BuildContextExtension on BuildContext {
  TextTheme textTheme() {
    return Theme.of(this)
        .textTheme; //this dememin nedeni BuildContex icindeki contex i isaret ediyor zaten
  }
}

class _DurationItems {
  static final Duration durationLow = Duration(seconds: 1);
}

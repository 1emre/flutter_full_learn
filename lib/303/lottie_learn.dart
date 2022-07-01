import 'package:flutter/material.dart';
import 'package:flutter_full_learn/product/constant/duration_items.dart';
import 'package:flutter_full_learn/product/constant/lottie_items.dart';
import 'package:flutter_full_learn/product/global/theme_notifer.dart';
import 'package:flutter_full_learn/product/navigator/navigator_routes.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class LottieLearn extends StatefulWidget {
  LottieLearn({Key? key}) : super(key: key);

  @override
  State<LottieLearn> createState() => _LottieLearnState();
}

class _LottieLearnState extends State<LottieLearn> with TickerProviderStateMixin{

  late final AnimationController _controller;
  bool isLight = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this,duration: DurationItems.durationNormal());
    navigateToHome();
  }

  Future<void> navigateToHome() async {
   await Future.delayed(Duration(seconds: 1));
   Navigator.of(context).pushReplacementNamed(navigateRoutes.home.withParaf);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
            onTap: (){
              _controller.animateTo(isLight ? 1 : 0.5);
              context.read<ThemeNotifer>().changeTheme();
              isLight = !isLight;
            },
              child: Lottie.asset(LottieItems.themeChange.lottiePath,
                  repeat: false,
                  controller: _controller
                  )),
        ],
      ),
      body: LoadingLottie(),
    );
  }
}

class LoadingLottie extends StatelessWidget {
  const LoadingLottie({
    Key? key,
  }) : super(key: key);

  final _lottie = 'https://assets6.lottiefiles.com/packages/lf20_VRHN4h.json';

  @override
  Widget build(BuildContext context) {
    return Center(child: Lottie.network(_lottie));
  }
}

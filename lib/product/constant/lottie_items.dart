enum LottieItems {
  themeChange
}

extension LottieItemExtension on LottieItems{

  String _path(){
    switch (this) {
      
      case LottieItems.themeChange:
        return 'theme_change';
    }
  }

  String get lottiePath => 'assets/lottie/lottie_${_path()}.json';
}
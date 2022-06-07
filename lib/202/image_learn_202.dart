import 'package:flutter/material.dart';

class ImageLearn202 extends StatefulWidget {
  ImageLearn202({Key? key}) : super(key: key);

  @override
  State<ImageLearn202> createState() => _ImageLearn202State();
}

class _ImageLearn202State extends State<ImageLearn202> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
    body: ImagePaths.zarPaths.toWidget(height: 100  ),);
  }
}


enum ImagePaths{
  zarPaths
}

extension ImagePathsExtension on ImagePaths{
  String path(){
    return 'assets/PNG_transparency_demonstration_1.png';
  }

  Widget toWidget ({double height = 24}){
    return Image.asset(path(),height: height,);
  }

}
import 'package:flutter/material.dart';
import 'package:flutter_full_learn/product/global/resource_contex.dart';
import 'package:provider/provider.dart';

class ImageLearn202 extends StatefulWidget {
  ImageLearn202({Key? key}) : super(key: key);

  @override
  State<ImageLearn202> createState() => _ImageLearn202State();
}

class _ImageLearn202State extends State<ImageLearn202> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: [IconButton(onPressed: () {
            context.read<ResourceContext>().clear();
          }, icon: Icon(Icons.remove))],
          title: Text(
              context.read<ResourceContext>().model?.data?.length.toString() ??
                  '0')),
      body: ImagePaths.zarPaths.toWidget(height: 100),
    );
  }
}

enum ImagePaths { zarPaths }

extension ImagePathsExtension on ImagePaths {
  String path() {
    return 'assets/PNG_transparency_demonstration_1.png';
  }

  Widget toWidget({double height = 24}) {
    return Image.asset(
      path(),
      height: height,
    );
  }
}

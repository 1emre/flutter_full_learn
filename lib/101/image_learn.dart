import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({Key? key}) : super(key: key);

  final String _imagePath =
      'https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Apple-book.svg/800px-Apple-book.svg.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 100,
            width: 300,
            child:PngImage(name: ImageItems().appleBookWithoutPath),
          )
        ],
      ),
    );
  }
}

class ImageItems{
  final String appleBookWithoutPath = '50-509242_apple-and-books-clipart-school-png-transparent-png';
}


class PngImage extends StatelessWidget{
  const PngImage({Key? key,required this.name}) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Image.asset(_nameWithPath,fit: BoxFit.cover);
  }

  String get _nameWithPath => 'assets/$name.png';
}
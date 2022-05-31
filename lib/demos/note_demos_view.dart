import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learn/101/image_learn.dart';

class NoteDemos extends StatelessWidget {
  const NoteDemos({Key? key}) : super(key: key);

  final _title = 'Create your first note';
  final _createNote = 'Create a note';
  final _description = 'Add a note';
  final _importNotes = 'Import Notes';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             PngImage(name: ImageItems().appleBookWithoutPath,),
              _TittleWidget(title: _title),
              Padding(
                padding: PaddingItems.verticalPadding,
                child: _SubtittleWidget(tittle: _description * 10),
              ),
              _createButton(context),
              TextButton(onPressed: () {}, child: Text(_importNotes)),
              const SizedBox(height: ButtonHeights.buttonNormalHeight),
            ],
          ),
        ),
      ),
    );
  }

  ElevatedButton _createButton(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        child: SizedBox(
          height: ButtonHeights.buttonNormalHeight,
          child: Center(
            child: Text(
              _createNote,
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
        ));
  }
}

class _SubtittleWidget extends StatelessWidget {
  const _SubtittleWidget(
      {Key? key, this.textAlign = TextAlign.center, required this.tittle})
      : super(key: key);

  final TextAlign textAlign;
  final String tittle;

  @override
  Widget build(BuildContext context) {
    return Text(
      tittle,
      textAlign: textAlign,
      style: Theme.of(context)
          .textTheme
          .subtitle1
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w400),
    );
  }
}

class _TittleWidget extends StatelessWidget {
  const _TittleWidget({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .headline5
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w800),
    );
  }
}

class PaddingItems {
  static const EdgeInsets horizontalPadding =
      EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 10);
}

class ButtonHeights {
  static const double buttonNormalHeight = 50;
}

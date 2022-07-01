import 'dart:developer';

import 'package:flutter/material.dart';

class AlertLearn extends StatefulWidget {
  AlertLearn({Key? key}) : super(key: key);

  @override
  State<AlertLearn> createState() => _AlertLearnState();
}

class _AlertLearnState extends State<AlertLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final response = await showDialog(
              //barrierDismissible: false, //arka ekrana tıklayıp dialogın kapanmasını engelliyor
              context: context,
              builder: (context) {
                //return _UpdateDialog();
               // return UpdateDialog(context: context);
               return _ImageZoomDialog();
              });

          inspect(response);
        },
        child: Icon(Icons.shower),
      ),
    );
  }
}

class _UpdateDialog extends StatelessWidget {
  const _UpdateDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('data'),
      actions: [
        ElevatedButton(
            onPressed: () {
              Navigator.pop(context, true);
            },
            child: Text('OK')),
        ElevatedButton(onPressed: () {}, child: Text('NO')),
      ],
    );
  }
}

class UpdateDialog extends AlertDialog {
  UpdateDialog({Key? key, required BuildContext context})
      : super(
          key: key,
          title: Text('data'),
          actions: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, true);
                },
                child: Text('OK')),
            ElevatedButton(onPressed: () {}, child: Text('NO')),
          ],
        );
}

class _ImageZoomDialog extends StatelessWidget {
  const _ImageZoomDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      child: Dialog(
        insetPadding: EdgeInsets.zero,
        child: Image.network(
          'https://picsum.photos/200/300',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

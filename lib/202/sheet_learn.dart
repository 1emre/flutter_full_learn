import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/image_learn.dart';

class SheetLearn extends StatefulWidget {
  SheetLearn({Key? key}) : super(key: key);

  @override
  State<SheetLearn> createState() => _SheetLearnState();
}

class _SheetLearnState extends State<SheetLearn> with ProductSheetMixin {
  Color _backroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backroundColor,
      appBar: AppBar(),
      body: Center(
        child: TextButton(
            onPressed: () {
              showCustomSheet(context, ImageLearn());
            },
            child: Text('Show')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final resault = await showModalBottomSheet(
              backgroundColor: Colors.red,
              barrierColor:
                  Colors.transparent, // arka plandakı kısmın rengini belirler
              shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(20))),
              //isScrollControlled: true, // yapılırsa tum ekranı kaplar
              context: context,
              builder: (ctx) {
                return _CustomSheet();
              });

          if (resault is bool) {
            setState(() {
              _backroundColor = Colors.cyan;
            });
          }
        },
        child: const Icon(Icons.share),
      ),
    );
  }
}

class _CustomSheet extends StatefulWidget {
  const _CustomSheet({
    Key? key,
  }) : super(key: key);

  @override
  State<_CustomSheet> createState() => _CustomSheetState();
}

class _CustomSheetState extends State<_CustomSheet> {
  Color _backroundColor = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 24,
              child: Stack(
                children: [
                  Divider(
                    color: Colors.black26,
                    thickness: 3,
                    indent: MediaQuery.of(context).size.width * 0.45,
                    endIndent: MediaQuery.of(context).size.width * 0.45,
                  ),
                  Positioned(
                      top: 0,
                      right: 0,
                      child: IconButton(
                        alignment: Alignment.topCenter,
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.close),
                      )),
                ],
              ),
            ),
            const Text('data'),
            Image.network('https://picsum.photos/200/300'),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _backroundColor = Colors.amber;
                  });
                  Navigator.of(context).pop<bool>(true);
                },
                child: Text('OK')),
          ],
        ),
      ),
    );
  }
}

mixin ProductSheetMixin {
  Future<T?> showCustomSheet<T>(BuildContext context, Widget child) async {
    return await showModalBottomSheet(
        backgroundColor: Colors.red,
        barrierColor:
            Colors.transparent, // arka plandakı kısmın rengini belirler
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
        isScrollControlled: true, // yapılırsa tum ekranı kaplar
        context: context,
        builder: (ctx) {
          return _CustomMainSheet(child: child);
        });
  }
}

class _CustomMainSheet extends StatelessWidget {
  const _CustomMainSheet({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _BaseSheetHeader(),
            Expanded(child: child),
          ],
        ),
      ),
    );
  }
}

class _BaseSheetHeader extends StatelessWidget {
  const _BaseSheetHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: Stack(
        children: [
          Divider(
            color: Colors.black26,
            thickness: 3,
            indent: MediaQuery.of(context).size.width * 0.45,
            endIndent: MediaQuery.of(context).size.width * 0.45,
          ),
          Positioned(
              top: 0,
              right: 0,
              child: IconButton(
                alignment: Alignment.topCenter,
                padding: EdgeInsets.zero,
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.close),
              )),
        ],
      ),
    );
  }
}

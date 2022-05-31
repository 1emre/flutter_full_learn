import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Learn'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            GestureDetector(
              child: Card(
                child: SizedBox(
                  height: 50,
                  width: 50,
                ),
              ),
              onDoubleTap: () {},
            ),
            Card(
              color: Theme.of(context).colorScheme.error,
              child: const SizedBox(
                height: 50,
                width: 150,
              ),
              shape: StadiumBorder(),
            ),
            Card(
              color: Theme.of(context).colorScheme.error,
              child: const SizedBox(
                height: 50,
                width: 150,
              ),
              shape: CircleBorder(),
            ),
            _CustomCard(
              child: const SizedBox(
                height: 50,
                width: 150,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CustomCard extends StatelessWidget {
  _CustomCard({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Theme.of(context).colorScheme.error,
        child: child,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)));
  }
}


//  Borders
//  StadiumBorder() 
//  CircleBorder() 
//  RoundedRectangleBorder() 
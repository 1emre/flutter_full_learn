import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  const TextLearnView({Key? key}) : super(key: key);

  final String? name = 'samet';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Emre'),
      ),
      body:   Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
             Text(
              'kara güzel bir renktir $name',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  wordSpacing: 2,
                  decoration: TextDecoration.underline,
                  letterSpacing: 2,
                  color: Colors.red,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
             Text(
              'Naber kral',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.yellow),
            ),
            Text(name ?? 'geldi' ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Buttons')),
      body: Column(
        children: [
          TextButton(
            onPressed: () {},
            child: Text(
              'a',
              style: Theme.of(context).textTheme.headline1,
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.green;
              }
              return Colors.white;
            })),
          ),
          ElevatedButton(onPressed: () {}, child: Text('a')),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.ac_unit_outlined),
              color: Colors.red),
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
          OutlinedButton(onPressed: () {}, child: Text('a')),
          InkWell(onTap: () {}, child: Text('a')),
          ElevatedButton(
            onPressed: () {},
            child: Text('Place Bid'),
            style: ElevatedButton.styleFrom(primary: Colors.black,shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))))
          )
        ],
      ),
    );
  }
}

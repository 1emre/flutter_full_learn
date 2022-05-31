import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppLearnView extends StatelessWidget {
  const AppLearnView({Key? key}) : super(key: key);

  final String _title = 'Welcome Learn';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.chevron_left),
        centerTitle: true,
        // backgroundColor: Colors.transparent,
        //elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        actionsIconTheme: IconThemeData(color: Colors.red),
        automaticallyImplyLeading: false,
        title: Text(_title),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
          )
        ],
      ),
    );
  }
}

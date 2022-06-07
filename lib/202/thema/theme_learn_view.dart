import 'package:flutter/material.dart';
import 'package:flutter_full_learn/demos/password_text_field.dart';

class ThemLearnView extends StatefulWidget {
  ThemLearnView({Key? key}) : super(key: key);

  @override
  State<ThemLearnView> createState() => _ThemLearnViewState();
}

class _ThemLearnViewState extends State<ThemLearnView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          PasswordTextField(),
          CheckboxListTile(
            value: true,
            onChanged: (val) {},
            title: const Text('Select'),
          )
        ],
      ),
    );
  }
}

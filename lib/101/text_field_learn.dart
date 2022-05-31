import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldLearn extends StatefulWidget {
  TextFieldLearn({Key? key}) : super(key: key);

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {

  final FocusNode _focusNodeOne = FocusNode();
  final FocusNode _focusNodeSecond = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('data'),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.mail),
                border: OutlineInputBorder(),
                labelText: 'Mail',
              ),
              keyboardType: TextInputType.emailAddress,
              autofocus: true,
              focusNode: _focusNodeOne,
              textInputAction: TextInputAction.next,
            ),
            SizedBox(height: 5,),
            TextField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.phone),
                border: OutlineInputBorder(),
                labelText: 'phone',
              ),
              keyboardType: TextInputType.phone,
              focusNode: _focusNodeSecond,
              textInputAction: TextInputAction.next,
            ),
          ],
        ),
      ),
      
    );
  }
}

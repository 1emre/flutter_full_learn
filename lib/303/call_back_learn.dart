// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_full_learn/product/widget/button/answer_button.dart';
import 'package:flutter_full_learn/product/widget/button/loading_button.dart';
import 'package:flutter_full_learn/product/widget/callback_dropdown.dart';

class CallBackLearn extends StatefulWidget {
  CallBackLearn({Key? key}) : super(key: key);

  @override
  State<CallBackLearn> createState() => _CallBackLearnState();
}

class _CallBackLearnState extends State<CallBackLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          CallBackDropDown(onUserSelected: (CallbackUser user){
            print(user.name);
          }),
          AnswerButton(onNumber: (int number){
            print(number);
            return number % 3 == 1 ;
          }),
          LoadingButton(name: 'Save', onPressed: () async {
          await  Future.delayed(Duration(seconds: 1));
          })
        ],
      ),
    );
  }
}

class CallbackUser {
  final String name;
  final int id;
  CallbackUser({
    required this.name,
    required this.id,
  });

  // TODO: Dummy remove it
  static List<CallbackUser> dummyUsers() {
    return [
      CallbackUser(name: 'vb', id: 123),
      CallbackUser(name: 'vb2', id: 123)
    ];
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CallbackUser && other.name == name && other.id == id;
  }

  @override
  int get hashCode => name.hashCode ^ id.hashCode;
}

import 'package:flutter/material.dart';

import '../../303/call_back_learn.dart';

class CallBackDropDown extends StatefulWidget {
  CallBackDropDown({Key? key, required this.onUserSelected}) : super(key: key);


  final void Function(CallbackUser user) onUserSelected;
  @override
  State<CallBackDropDown> createState() => _CallBackDropDownState();
}

class _CallBackDropDownState extends State<CallBackDropDown> {
  CallbackUser? _user;

  void _updateUser(CallbackUser? item){
    setState(() {
      _user = item;
    });
    if (_user != null){
      widget.onUserSelected.call(_user!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return  DropdownButton<CallbackUser>(
            value: _user,
              items: CallbackUser.dummyUsers().map((e) => DropdownMenuItem(
                    child: Text(e.name),
                    value: e,
                  )).toList(),
              onChanged: _updateUser);
  }
}
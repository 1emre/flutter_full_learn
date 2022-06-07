import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  PasswordTextField({Key? key, this.controller}) : super(key: key);

  final TextEditingController? controller;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  final _obsureText = '*';

  bool _isVisieble = true;

  void _changeVisible() {
    setState(() {
      _isVisieble = !_isVisieble;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
        autofillHints: [AutofillHints.password],
        keyboardType: TextInputType.visiblePassword,
        obscureText: _isVisieble, //secure gozukmesi icin
        obscuringCharacter: _obsureText, //secure karakteri belirlemek icin
        decoration: InputDecoration(
            border: UnderlineInputBorder(),
            hintText: 'Password',
            // suffixIcon: Text('a'),
            suffix: _onVisibilityIcon()));
  }

  IconButton _onVisibilityIcon() {
    return IconButton(
              onPressed: _changeVisible,
              icon: AnimatedCrossFade(firstChild: Icon(Icons.visibility_outlined), secondChild: Icon(Icons.visibility_off_outlined), 
              crossFadeState: _isVisieble ? CrossFadeState.showFirst : CrossFadeState.showSecond, duration: Duration(seconds: 2)),//animasyonlu yapmak ıstegımde boyle yapabilirim
              // icon: Icon(_isVisieble
              //     ? Icons.visibility_outlined
              //     : Icons.visibility_off_outlined));
    );
  }
}

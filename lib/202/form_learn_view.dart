import 'package:flutter/material.dart';

class FormLearnView extends StatefulWidget {
  FormLearnView({Key? key}) : super(key: key);

  @override
  State<FormLearnView> createState() => _FormLearnViewState();
}

class _FormLearnViewState extends State<FormLearnView> {
  final GlobalKey<FormState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _key,
        autovalidateMode: AutovalidateMode.always,
        onChanged: () {},
        child: Column(
          children: [
            TextFormField(
              validator: FormFieldValidator().isNotEmpty,
            ),
            TextFormField(
              validator: FormFieldValidator().isNotEmpty,
            ),
            DropdownButtonFormField(
              validator: FormFieldValidator().isNotEmpty,
              items: const [
              DropdownMenuItem(child: Text('data'), value: 'v'),
              DropdownMenuItem(child: Text('data'), value: 'v'),
              DropdownMenuItem(child: Text('data'), value: 'v'),
            ], onChanged: (value) {}),
            CheckboxListTile(value: true, onChanged: (value){}),
            ElevatedButton(
                onPressed: () {
                  if (_key.currentState?.validate() ?? false) {
                    print('a');
                  }
                },
                child: const Text('Send')),
          ],
        ),
      ),
    );
  }
}

class FormFieldValidator {
  String? isNotEmpty(String? data) {
    return (data?.isNotEmpty ?? false) ? null : 'Bu alan boş geçilemez.';
  }
}

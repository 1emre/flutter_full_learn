

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/service/post_model.dart';

class ServicePostLearn extends StatefulWidget {
  ServicePostLearn({Key? key}) : super(key: key);

  @override
  State<ServicePostLearn> createState() => _ServicePostLearnState();
}

class _ServicePostLearnState extends State<ServicePostLearn> {
  //List<PostModel>? _items;
  String? name;
  bool _isLooding = false;
  late final Dio _dio;
  final String _baseUrl = 'https://jsonplaceholder.typicode.com/';

  final TextEditingController _tittleController = TextEditingController();
  final TextEditingController _bodyController = TextEditingController();
  final TextEditingController _userIdController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _dio = Dio(BaseOptions(baseUrl: _baseUrl));
  }

  void _changeLoading() {
    setState(() {
      _isLooding = !_isLooding;
    });
  }

  Future<void> _addItemToService (PostModel postModel) async {
    _changeLoading();
    final response = await _dio.post('posts', data: postModel);
  
    if(response.statusCode == HttpStatus.created){
      name = 'Suscced';
    }
    _changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(name ?? ""),
          actions: [_isLooding ? const CircularProgressIndicator() : const SizedBox.shrink()],
        ),
        body: Column(
          children: [
             TextField(
              controller: _tittleController,
              decoration: const InputDecoration(labelText: 'Title'),
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
            ),
             TextField(controller: _bodyController,
              decoration: const InputDecoration(labelText: 'Body'),
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,

            ),
             TextField( controller: _userIdController,
              keyboardType: TextInputType.number,
              autofillHints: const [AutofillHints.creditCardNumber],
              decoration: const InputDecoration(labelText: 'UserId'),
            ),
            TextButton(onPressed: _isLooding ? null : () {
              if(_tittleController.text.isNotEmpty && _bodyController.text.isNotEmpty && _userIdController.text.isNotEmpty){
                  final model = PostModel(title: _tittleController.text,body: _bodyController.text,userId: int.tryParse(_userIdController.text) );
                  _addItemToService(model);
              }
            }, child:const Text('Send')),
          ],
        ));
  }
}

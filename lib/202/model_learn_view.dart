import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/model_learn.dart';

class ModelLearnView extends StatefulWidget {
  ModelLearnView({Key? key}) : super(key: key);

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {
  var user9 = PostMode8(body: 'a');
  @override
  void initState() {
    //service için en mantıklı yontem
    final user8 = PostMode8(body: 'a');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(user9.body ?? ''),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          user9 = user9.copyWith(title: 'vb');
          user9.updateBody('veli');
        });
        
      },),
    );
  }
}

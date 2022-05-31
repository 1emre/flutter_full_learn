import 'package:flutter/material.dart';

class StatefulLifeCycleLearn extends StatefulWidget {
  StatefulLifeCycleLearn({Key? key, required this.message}) : super(key: key);

  final String message;

  @override
  State<StatefulLifeCycleLearn> createState() => _StatefulLifeCycleLearnState();
}

class _StatefulLifeCycleLearnState extends State<StatefulLifeCycleLearn> {

  //yukarıdaki message final degistirilemez oldugu ıcın kendımı mesajı mı tutuyorum

  String _message = '';
  late final bool _isOdd;
  //mesaj tekse yanına tek ciftse cift yaz

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant StatefulLifeCycleLearn oldWidget) {
    super.didUpdateWidget(oldWidget);
    if(oldWidget.message != widget.message)
    _message=widget.message;
    _computeName();
    setState(() {
      
    });
  }

  @override
  void initState() {
    super.initState();
    _message = widget.message;
    _isOdd = widget.message.length.isOdd;
    _computeName();
  }

  void _computeName() {
    if (_isOdd){
      _message += ' Tek';
    }
    else {
      _message += ' Cift';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('text'),
      ),
      body: _isOdd ? Text(_message) : Text(_message),
    );
  }
}

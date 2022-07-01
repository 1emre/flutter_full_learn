import 'dart:math';

import 'package:flutter/material.dart';

class AnswerButton extends StatefulWidget {
  AnswerButton({Key? key,required this.onNumber}) : super(key: key);


  final bool Function(int number)? onNumber; 
  @override
  State<AnswerButton> createState() => _AnswerButtonState();
}

class _AnswerButtonState extends State<AnswerButton> {

  //bana bir sayı don random bu sayıyı kontrol edip sana bir cevap vericem
  //bu cevaba göre buton rengini güncelle
  //eger dogru ise ise değil ise kırmızı yap
  Color? _backroundColor;
  
  void randomNumber(){
    final int result = Random().nextInt(10);
    final response = widget.onNumber?.call(result) ?? false;

    if(response != null){
      setState(() {
        _backroundColor = response ? Colors.green : Colors.red;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(primary: _backroundColor),
      onPressed: randomNumber,child: Text('data'),);
  }
}
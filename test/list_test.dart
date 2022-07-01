import 'package:collection/collection.dart';
import 'package:dio/dio.dart';
import 'package:flutter_full_learn/303/generic_learn.dart';
import 'package:flutter_full_learn/product/widget/card/high_card.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUp(() {});
  test('List best of', () {
    List<GenericUser> users = [
      GenericUser('vb', '11', 10),
      GenericUser('vb1', '11', 10),
      GenericUser('vb2', '11', 20),
    ];

  

    List<HighCard> highCard = users.map((e) {
      return HighCard(items: e.name.split('').toList());
    }).toList();


    // try {
    //   users.where((element) => element.findUserName('vb'));
    // } catch (e) {
    //   print(e);
    // }

   final response =  users.where((element) => element.money > 5);
    print(response);

    users.lastWhere((element) => element.id == '5');

    users.take(5); // listedeki 5 elemanı alır eger 5ten az varsa ne kadar varsa onu getırır
    users.remove(GenericUser('vb', '11', 10));
    users.removeAt(2);

    users.indexOf(GenericUser('vb', '11', 10));

  });



  test('List best of with collecion', () {
    List<GenericUser> users = [
      GenericUser('vb', '11', 10),
      GenericUser('vb', '11', 10),
      GenericUser('vb', '11', 20),
    ];

    final response = users.singleWhereOrNull((element) => element.findUserName('x'));//icerdeki datayı bulamassa null doner

    print(response);


    users.lastWhereOrNull((element) => element.id == '5');

    users.forEachIndexed((index, element) { });//hem index hem elementi veriyor
  
  });
}
// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter_full_learn/202/cache/shared_manager.dart';
import 'package:flutter_full_learn/models/user_model.dart';

class UserCashManager {
  final SharedManager sharedManager;
  
  UserCashManager({
    required this.sharedManager
  });

  Future<void> saveItems(List<User> items) async {
    //Compute
    final _items = items.map((element) => jsonEncode(element)).toList();
    await sharedManager.saveStringItems(SharedKeys.users, _items);
  }

  List<User>? getItems() {
    final itemString = sharedManager.getStringItems(SharedKeys.users);
    if (itemString?.isNotEmpty ?? false) {
      return itemString!.map((element) {
        final json = jsonDecode(element);
        if (json is Map<String,dynamic>)
        {
          return User.fromJson(json);
        }
        return User(name: '', description: '', url: '');
      }).toList();
    }
    return null;
  }
}

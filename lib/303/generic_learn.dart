// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class UserManagement<T extends AdminUser> {
  final T admin;

  UserManagement(this.admin);

  void sayName(GenericUser user) {
    print(user.name);
  }

  int calculateMoney(List<GenericUser> users) {
    int sum = 0;
    for (var element in users) {
      sum += element.money;
    }
    // print(sum);

    int initialValue = admin.role == 1 ? admin.money : 0;

    final money2 = users.map((e) => e).fold<int>(initialValue,
        (previousValue, element) => previousValue + element.money);

    final sumMoney = users
        .map((e) => e.money)
        .fold<int>(0, (previousValue, element) => previousValue + element);

    final _money = users.map((e) => e).fold<int>(
        0, (previousValue, element) => previousValue + element.money);

    return money2;
  }

  // Iterable<String> showNames(List<GenericUser> users){//performansta sadece gostermek ıcın Itrable list kullanabiliriz
  //   final names = users.map((e) => e.name);
  //   return names;
  // }

  Iterable<R>? showNames<R>(List<GenericUser> users) {
    //performansta sadece gostermek ıcın Itrable list kullanabiliriz
    // final names = users.map((e) => e.name).cast<T>();
    // return names;

    if (R == String) {
      final names = users.map((e) => e.name);
      return names.cast<R>();
    }
    return null;
  }

  Iterable<VBModel<R>>? showNames2<R>(List<GenericUser> users) {
    //performansta sadece gostermek ıcın Itrable list kullanabiliriz
    // final names = users.map((e) => e.name).cast<T>();
    // return names;

    if (R == String) {
      final names = users.map((e) => VBModel(e.name.split('').toList().cast<R>()));
      return names;
    }
    return null;
  }
}

class VBModel<T>{
  final String name = 'vb';
  final List<T> items;

  VBModel(this.items);

}

class GenericUser extends Equatable{
  final String name;
  final String id;
  final int money;

  GenericUser(this.name, this.id, this.money);


  bool findUserName(String name){
    return this.name==name;
  }


  @override
  String toString() => 'GenericUser(name: $name, id: $id, money: $money)';
  
  @override
  // TODO: implement props
  List<Object?> get props => [id];
}

class AdminUser extends GenericUser {
  final int role;
  AdminUser(String name, String id, int money, this.role)
      : super(name, id, money);
}

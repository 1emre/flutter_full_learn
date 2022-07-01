import 'package:flutter_full_learn/303/generic_learn.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUp(() {});
  test('User calculate', () {
    final users = [
      GenericUser('vb', '11', 10),
      GenericUser('vb', '11', 10),
      GenericUser('vb', '11', 20),
    ];

  // final result =  UserManagement().calculateMoney(users);

  final userManagement = UserManagement(AdminUser('vadmin', '1', 15, 1));

  final result = userManagement.calculateMoney(users);

  final response = userManagement.showNames<String>(users);

  final response2 = userManagement.showNames2<String>(users);

  
  expect(55, result);

  });
}

import 'package:flutter_full_learn/404/block/future/login/model/login_model.dart';
import 'package:flutter_full_learn/404/block/future/login/service/logind_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vexana/vexana.dart';

void main() {
  late IloginService loginService;
  setUp(() {
    loginService = LoginService(
        NetworkManager(options: BaseOptions(baseUrl: 'https://reqres.in/')));
  });
  test('Login Test - eve.holt@reqres.in & cityslicka', () async {
    final response = await loginService
        .login(LoginModel('eve.holt@reqres.in', 'cityslicka'));

    expect(response?.data, isNotNull);
  });
}

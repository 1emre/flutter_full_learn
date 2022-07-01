import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_full_learn/404/block/future/login/cubit/login_cubit_state.dart';
import 'package:flutter_full_learn/404/block/future/login/model/login_model.dart';
import 'package:flutter_full_learn/404/block/future/login/service/logind_service.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(IloginService loginService)
      : _loginService = loginService,
        super(const LoginState());

  final IloginService _loginService;

  Future<void> checkUser(String email, String password) async {
    emit(state.copyWith(isLoading: true, model: LoginModel(email, password)));
    final response = await _loginService.login(state.model!);
    emit(state.copyWith(isLoading: false, isCompleted: response?.data != null));
  }
}

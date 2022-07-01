// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:flutter_full_learn/404/block/future/login/model/login_model.dart';

import '../../../product/token_model.dart';

class LoginState extends Equatable {
  final bool isLoading;
  final LoginModel? model;
  final TokenModel? tokenModel;
  final bool isCompleted;

  const LoginState(
      {this.isLoading = false,
      this.model,
      this.tokenModel,
      this.isCompleted = false});
  @override
  // TODO: implement props
  List<Object?> get props => [
        isLoading,
        model
      ]; //isloading değişmedikce sayfanın tetiklenmesini önlüyor

  LoginState copyWith({
    bool? isLoading,
    LoginModel? model,
    TokenModel? tokenModel,
    bool? isCompleted,
  }) {
    return LoginState(
      isLoading: isLoading ?? false,
      model: model ?? this.model,
      tokenModel: tokenModel ?? this.tokenModel,
      isCompleted: isCompleted ?? false,
    );
  }
}

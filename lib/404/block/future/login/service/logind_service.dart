import 'package:flutter_full_learn/404/block/future/login/model/login_model.dart';
import 'package:flutter_full_learn/404/block/product/token_model.dart';
import 'package:vexana/vexana.dart';

abstract class IloginService {
  final INetworkManager networkManager;

  IloginService(this.networkManager);
  Future<IResponseModel<TokenModel?>?> login(LoginModel model);

  final String _loginPath = 'api/login';
}

class LoginService extends IloginService {
  LoginService(INetworkManager networkManager) : super(networkManager);

  @override
  Future<IResponseModel<TokenModel?>?> login(LoginModel model) async {
    return await networkManager.send<TokenModel, TokenModel>(_loginPath,
        data: model, parseModel: TokenModel(), method: RequestType.POST);
  }
}

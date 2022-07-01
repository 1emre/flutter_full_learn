import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter_full_learn/303/reqrest_resource/service/reqres_service.dart';
import 'package:flutter_full_learn/product/global/resource_contex.dart';
import 'package:provider/provider.dart';

import '../model/resource_model.dart';

class ReqresProvider extends ChangeNotifier{
  final IReqresService reqresService;
  List<Data>? resources;
  bool isLoading = false;

  ReqresProvider(this.reqresService) {
    _fetch();
  }

  void _changeLoading() {
    isLoading = !isLoading;
    notifyListeners();
  }

  Future<void> _fetch() async {
    _changeLoading();
    resources = (await reqresService.fechResourceItem())?.data ?? [];
    _changeLoading();
  }

  void saveToLocal(ResourceContext resourceContext){
    resourceContext.saveModel(ResourceModel(data: resources));
  }
}

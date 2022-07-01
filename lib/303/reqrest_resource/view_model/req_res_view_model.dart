import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/cache/shared_learn_cache.dart';
import 'package:flutter_full_learn/303/reqrest_resource/service/reqres_service.dart';
import 'package:flutter_full_learn/303/reqrest_resource/view/req_res_view.dart';

import '../../../product/service/project_dio.dart';
import '../model/resource_model.dart';

abstract class ReqresViewModel extends LoadingStateull<ReqresView>
    with ProjectMixin {
  late final IReqresService reqresService;

  List<Data>? resources = [];
  @override
  void initState() {
    super.initState();
    reqresService = ReqresService(service);
    _fetch();
  }

  Future<void> _fetch() async {
    changeLoading();
    resources = (await reqresService.fechResourceItem())?.data ?? [];
    changeLoading();
  }
}

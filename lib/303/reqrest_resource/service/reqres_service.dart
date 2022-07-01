
import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_full_learn/303/reqrest_resource/model/resource_model.dart';

abstract class IReqresService {
  IReqresService(this.dio);
  final Dio dio;

  Future<ResourceModel?> fechResourceItem();
}

enum _ReqresPath { unknown }

class ReqresService extends IReqresService {
  ReqresService(Dio dio) : super(dio);

  @override
  Future<ResourceModel?> fechResourceItem() async {
    final response = await dio.get('/${_ReqresPath.unknown.name}');
    if (response.statusCode == HttpStatus.ok) {
      final jsonBody = response.data;
      if (jsonBody is Map<String, dynamic>) { 
        return ResourceModel.fromJson(jsonBody);
      }
    }
    return null;
  }
}

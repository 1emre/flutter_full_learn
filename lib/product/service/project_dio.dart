import 'package:dio/dio.dart';

mixin ProjectMixin{
  final service = Dio(BaseOptions(baseUrl: 'https://reqres.in/api'));
}
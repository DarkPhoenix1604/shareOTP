import 'package:dio/dio.dart';

import '../core/utils/type_def.dart';


abstract class AppHttp {
  AppHttpResponse post({
    required String path,
    Object? data,
    Options? options,
    bool token = true,
    Map<String, dynamic>? queryParameters,
  });

  AppHttpResponse gets({
    required String path,
    Object? data,
    Options? options,
    bool token = true,
    Map<String, dynamic>? queryParameters,
  });

  AppHttpResponse update({
    required String path,
    Object? data,
    Options? options,
    bool token = true,
    Map<String, dynamic>? queryParameters,
  });

  AppHttpResponse delete({
    required String path,
    Object? data,
    Options? options,
    bool token = true,
    Map<String, dynamic>? queryParameters,
  });

  AppHttpResponse put({
    required String path,
    Object? data,
    Options? options,
    bool token = true,
    Map<String, dynamic>? queryParameters,
  });

  AppHttpResponse putFile({
    required String path,
    Object? data,
    Options? options,
    bool token = true,
    Map<String, dynamic>? queryParameters,
  });
}

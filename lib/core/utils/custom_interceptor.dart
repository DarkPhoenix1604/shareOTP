import 'package:dio/dio.dart';

import 'log_util.dart';

class CustomInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final pattern = ColorText.white('====================== Request =================');

    LogUtility.custom(ColorText.green(options.data.toString()), name: 'Body');
    LogUtility.custom(pattern, name: 'Request');
    LogUtility.custom(ColorText.green(options.path), name: 'API');
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    LogUtility.custom(ColorText.white('====================== Response ================='),
        name: 'Response');
    LogUtility.custom(ColorText.yellow(response.data.toString()), name: 'BODY');
    LogUtility.custom(ColorText.yellow(response.statusCode.toString()), name: 'StatusCode');
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final pattern = ColorText.white('======================Error =================');
    final erroResponse = ColorText.red(err.response.toString());
    LogUtility.custom(pattern, name: 'Error');
    LogUtility.custom(erroResponse.toString(), name: 'Error Response');
    LogUtility.custom(err.message.toString(), name: 'Error ');
    handler.next(err);
  }
}

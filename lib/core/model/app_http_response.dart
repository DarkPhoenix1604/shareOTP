import 'package:dio/dio.dart';


class AppResponse {
  dynamic data;
  int? statusCode;
  String? statusMessage;
  Headers headers;

  AppResponse({
    this.data,
    this.statusCode,
    this.statusMessage,
    required this.headers,
  });

  factory AppResponse.fromDioResponse(Response response) {
    return AppResponse(
      data: response.data,
      statusCode: response.statusCode,
      statusMessage: response.statusMessage,
      headers: response.headers,
    );
  }
}

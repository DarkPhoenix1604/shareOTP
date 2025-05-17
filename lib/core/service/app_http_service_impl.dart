
import 'dart:async';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../api/shared_key.dart';
import '../../common/app_text.dart';
import '../../service/app_http_service.dart';
import '../../service/local_storage_service.dart';
import '../error/error.dart';
import '../error/error_response.dart';
import '../model/app_http_response.dart';
import '../utils/type_def.dart';

class AppHttpImpl extends AppHttp {
  static final defaultHeader = Options(
    headers: {'Content-Type': 'application/json'},
  );

  final Dio _dio;
  final LocalStorage _storage;

  AppHttpImpl(this._dio, this._storage);

  @override
  AppHttpResponse delete({
    required String path,
    Object? data,
    Options? options,
    bool token = true,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      late final Options? tokenHead;
      if (token) {
        tokenHead = await _headerWithToken();
        if (tokenHead == null) {
          return const Left(ErrorMessage(message: Apptext.sessionOut));
        }
      }
      final response = await _dio.delete(path,
          data: data,
          options: token ? tokenHead! : options ?? defaultHeader,
          queryParameters: queryParameters);
      return Right(AppResponse.fromDioResponse(response));
    } on DioException catch (dioError) {
      return Left(_dioErroParse(dioError));
    } on SocketException catch (_) {
      return const Left(ErrorResponse.socketException);
    } on FormatException catch (_) {
      return const Left(ErrorResponse.formatException);
    } on TimeoutException catch (_) {
      return const Left(ErrorResponse.timeOutException);
    }
  }

  @override
  AppHttpResponse gets(
      {required String path,
      Object? data,
      Options? options,
      bool token = true,
      Map<String, dynamic>? queryParameters}) async {
    try {
      late final Options? tokenHead;
      if (token) {
        tokenHead = await _headerWithToken();
        if (tokenHead == null) {
          return const Left(ErrorMessage(message: Apptext.sessionOut));
        }
      }

      final response = await _dio.get(
        path,
        data: data,
        options: token ? tokenHead! : options ?? defaultHeader,
        queryParameters: queryParameters,
      );
      return Right(AppResponse.fromDioResponse(response));
    } on DioException catch (dioError) {
      return Left(_dioErroParse(dioError));
    } on SocketException catch (_) {
      return const Left(ErrorResponse.socketException);
    } on FormatException catch (_) {
      return const Left(ErrorResponse.formatException);
    } on TimeoutException catch (_) {
      return const Left(ErrorResponse.timeOutException);
    }
  }

  @override
  AppHttpResponse post(
      {required String path,
      Object? data,
      Options? options,
      bool token = true,
      Map<String, dynamic>? queryParameters}) async {
    try {
      late final Options? tokenHead;
      if (token) {
        tokenHead = await _headerWithToken();
        if (tokenHead == null) {
          return const Left(ErrorMessage(message: Apptext.sessionOut));
        }
      }
      final response = await _dio.post(
        path,
        data: data,
        options: token ? tokenHead! : options ?? defaultHeader,
        queryParameters: queryParameters,
      );
      return Right(AppResponse.fromDioResponse(response));
    } on DioException catch (dioError) {
      return Left(_dioErroParse(dioError));
    } on SocketException catch (_) {
      return const Left(ErrorResponse.socketException);
    } on FormatException catch (_) {
      return const Left(ErrorResponse.formatException);
    } on TimeoutException catch (_) {
      return const Left(ErrorResponse.timeOutException);
    }
  }

  @override
  AppHttpResponse update(
      {required String path,
      Object? data,
      Options? options,
      bool token = true,
      Map<String, dynamic>? queryParameters}) async {
    try {
      late final Options? tokenHead;
      if (token) {
        tokenHead = await _headerWithToken();
        if (tokenHead == null) {
          return const Left(ErrorMessage(message: Apptext.sessionOut));
        }
      }
      final response = await _dio.put(
        path,
        data: data,
        options: token ? tokenHead! : options ?? defaultHeader,
        queryParameters: queryParameters,
      );
      return Right(AppResponse.fromDioResponse(response));
    } on DioException catch (dioError) {
      return Left(_dioErroParse(dioError));
    } on SocketException catch (_) {
      return const Left(ErrorResponse.socketException);
    } on FormatException catch (_) {
      return const Left(ErrorResponse.formatException);
    } on TimeoutException catch (_) {
      return const Left(ErrorResponse.timeOutException);
    }
  }

  @override
  AppHttpResponse put(
      {required String path,
      Object? data,
      Options? options,
      bool token = true,
      Map<String, dynamic>? queryParameters}) async {
    try {
      late final Options? tokenHead;
      if (token) {
        tokenHead = await _headerWithToken();
        if (tokenHead == null) {
          return const Left(ErrorMessage(message: Apptext.sessionOut));
        }
      }
      final response = await _dio.put(
        path,
        data: data,
        options: token ? tokenHead! : options ?? defaultHeader,
        queryParameters: queryParameters,
      );

      return Right(AppResponse.fromDioResponse(response));
    } on DioException catch (dioError) {
      return Left(_dioErroParse(dioError));
    } on SocketException catch (_) {
      return const Left(ErrorResponse.socketException);
    } on FormatException catch (_) {
      return const Left(ErrorResponse.formatException);
    } on TimeoutException catch (_) {
      return const Left(ErrorResponse.timeOutException);
    }
  }

  @override
  AppHttpResponse putFile(
      {required String path,
      Object? data,
      Options? options,
      bool token = true,
      Map<String, dynamic>? queryParameters}) async {
    try {
      late final Options? tokenHead;
      if (token) {
        tokenHead = await _headerWithToken();
        if (tokenHead == null) {
          return const Left(ErrorMessage(message: Apptext.sessionOut));
        }
      }
      final response = await _dio.post(
        path,
        data: data,
        options: token ? tokenHead! : options ?? defaultHeader,
        queryParameters: queryParameters,
      );
      return Right(AppResponse.fromDioResponse(response));
    } on DioException catch (dioError) {
      return Left(_dioErroParse(dioError));
    } on SocketException catch (_) {
      return const Left(ErrorResponse.socketException);
    } on FormatException catch (_) {
      return const Left(ErrorResponse.formatException);
    } on TimeoutException catch (_) {
      return const Left(ErrorResponse.timeOutException);
    }
  }

  AppError _dioErroParse(DioException dioError) {
    if (dioError.response != null) {
      try {
        final data = dioError.response!.data;
        final statusCode = dioError.response!.statusCode;
        final statusMessage = dioError.response!.statusMessage;
        if (statusCode != null && statusCode >= 400 && statusCode < 500) {
          return ErrorMessage(
            message:
                data['message'] ?? data['error'] ?? statusMessage ?? Apptext.somethingWentWrong,
          );
        }
        if (statusCode != null && statusCode >= 500) {
          return const ErrorMessage(message: Apptext.serverDown);
        }
        return ErrorMessage(
          message: data['message'] ?? statusMessage ?? Apptext.somethingWentWrong,
        );
      } catch (e) {
        return ErrorMessage(message: dioError.message ?? Apptext.serverDown);
      }
    } else {
      return ErrorMessage(message: dioError.message ?? Apptext.serverDown);
    }
  }

  Future<Options?> _headerWithToken() async {
    final token = await _storage.read(SharedKey.token);
    if (token != null) {
      return Options(
        headers: {
          'Authorization': 'Bearer $token',
          'Content-Type': 'application/json',
        },
      );
    }
    return null;
  }

  ///
}


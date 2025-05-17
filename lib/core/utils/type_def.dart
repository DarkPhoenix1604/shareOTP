
import 'package:dartz/dartz.dart';

import '../error/error.dart';
import '../error/success.dart';
import '../model/app_http_response.dart';



typedef AppHttpResponse = Future<Either<AppError, AppResponse>>;
typedef AppSuccessResponse = Future<Either<AppError, AppSuccess>>;
typedef AppTypeResponse<T> = Future<Either<AppError, T>>;
import 'message.dart';

abstract class AppError extends Message {
  const AppError({required super.message});
}

class ErrorMessage extends AppError {
  const ErrorMessage({ required super.message});
}

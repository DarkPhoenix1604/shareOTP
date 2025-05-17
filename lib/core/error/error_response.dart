import '../../common/app_text.dart';
import 'error.dart';

class ErrorResponse {
  static const socketException = ErrorMessage(message: Apptext.checkYourInternertConnection);
  static const somthingWentWrong = ErrorMessage(message: Apptext.checkYourInternertConnection);
  static const timeOutException = ErrorMessage(message: Apptext.tryAgainLater);
  static const formatException = ErrorMessage(message: Apptext.badRequest);
  static const dioError = ErrorMessage(message: Apptext.invalidRequest);
  static const sessionOut = ErrorMessage(message: Apptext.sessionOut);
  static const otherException = ErrorMessage(message: Apptext.somethingWentWrong);
}

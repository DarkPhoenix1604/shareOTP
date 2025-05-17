import 'package:formz/formz.dart';

import '../utils/text_field_validation.dart';


class NotEmpty extends FormzInput {
  const NotEmpty.pure() : super.pure('');
  const NotEmpty.dirty({String value = ''}) : super.dirty(value);

  @override
  String? validator(value) {
    return TextFieldValidation.notEmpty(value: value);
  }
}
class UserName extends FormzInput {
  const UserName.pure() : super.pure('');
  const UserName.dirty({String value = ''}) : super.dirty(value);

  @override
  String? validator(value) {
    return TextFieldValidation.userName(value: value);
  }
}

class NotNull extends FormzInput<int?, String?> {
  const NotNull.pure() : super.pure(null);
  const NotNull.dirty({int? value}) : super.dirty(value);

  @override
  String? validator(value) {
    return TextFieldValidation.notNull(value: value);
  }
}

import 'package:equatable/equatable.dart';

class AddAccessUser extends Equatable {
  final String name;
  final String number;
  final String pattern;
  final bool enable;
  const AddAccessUser({
    required this.name,
    required this.number,
    required this.pattern,
    required this.enable,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'number': number,
      'pattern': pattern,
      'enable': enable,
    };
  }

  @override
  List<Object> get props => [name, number, pattern, enable];
}

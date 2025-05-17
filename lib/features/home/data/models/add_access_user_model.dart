import '../../domain/entities/add_user.dart';

class AddAccessUserModel extends AddAccessUser {
  const AddAccessUserModel(
      {required super.name, required super.number, required super.pattern, required super.enable});

  @override
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'number': number,
      'pattern': pattern,
      'enable': enable,
    };
  }

  factory AddAccessUserModel.fromMap(Map<String, dynamic> map) {
    return AddAccessUserModel(
      name: map['name'] ?? '',
      number: map['number'] ?? '',
      pattern: map['pattern'] ?? '',
      enable: map['enable'] ?? false,
    );
  }
}

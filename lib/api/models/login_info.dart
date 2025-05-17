import 'dart:convert';

class loginInfo {
  String phNo;
  String name;

  loginInfo(
    this.phNo,
    this.name,
  ) {
    this.name = name;
    this.phNo = phNo;
  }

  loginInfo copyWith({
    String? phNo,
    String? name,
  }) {
    return loginInfo(
      phNo ?? this.phNo,
      name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'phNo': phNo,
      'name': name,
    };
  }

  factory loginInfo.fromMap(Map<String, dynamic> map) {
    return loginInfo(
      map['phNo'] ?? '',
      map['name'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory loginInfo.fromJson(String source) => loginInfo.fromMap(json.decode(source));

  @override
  String toString() => 'loginInfo(phNo: $phNo, name: $name)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is loginInfo &&
      other.phNo == phNo &&
      other.name == name;
  }

  @override
  int get hashCode => phNo.hashCode ^ name.hashCode;
}

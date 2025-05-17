import 'dart:convert';

class addAccess {
  String Pattern;
  String Number;
  addAccess({
    required this.Pattern,
    required this.Number,
  });
  

  addAccess copyWith({
    String? Pattern,
    String? Number,
  }) {
    return addAccess(
      Pattern: Pattern ?? this.Pattern,
      Number: Number ?? this.Number,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'Pattern': Pattern,
      'Number': Number,
    };
  }

  factory addAccess.fromMap(Map<String, dynamic> map) {
    return addAccess(
      Pattern: map['Pattern'] ?? '',
      Number: map['Number'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory addAccess.fromJson(String source) => addAccess.fromMap(json.decode(source));

  @override
  String toString() => 'addAccess(Pattern: $Pattern, Number: $Number)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is addAccess &&
      other.Pattern == Pattern &&
      other.Number == Number;
  }

  @override
  int get hashCode => Pattern.hashCode ^ Number.hashCode;
}

import 'dart:convert';

class shareCard {
  String OTP;
  String KeyWord;
  String Contact;
  DateTime ShareTime;
  shareCard({
    required this.OTP,
    required this.KeyWord,
    required this.Contact,
    required this.ShareTime,
  });

  shareCard copyWith({
    String? OTP,
    String? KeyWord,
    String? Contact,
    DateTime? ShareTime,
  }) {
    return shareCard(
      OTP: OTP ?? this.OTP,
      KeyWord: KeyWord ?? this.KeyWord,
      Contact: Contact ?? this.Contact,
      ShareTime: ShareTime ?? this.ShareTime,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'OTP': OTP,
      'KeyWord': KeyWord,
      'Contact': Contact,
      'ShareTime': ShareTime.millisecondsSinceEpoch,
    };
  }

  factory shareCard.fromMap(Map<String, dynamic> map) {
    return shareCard(
      OTP: map['OTP'] ?? '',
      KeyWord: map['KeyWord'] ?? '',
      Contact: map['Contact'] ?? '',
      ShareTime: DateTime.fromMillisecondsSinceEpoch(map['ShareTime']),
    );
  }

  String toJson() => json.encode(toMap());

  factory shareCard.fromJson(String source) => shareCard.fromMap(json.decode(source));

  @override
  String toString() {
    return 'shareCard(OTP: $OTP, KeyWord: $KeyWord, Contact: $Contact, ShareTime: $ShareTime)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is shareCard &&
      other.OTP == OTP &&
      other.KeyWord == KeyWord &&
      other.Contact == Contact &&
      other.ShareTime == ShareTime;
  }

  @override
  int get hashCode {
    return OTP.hashCode ^
      KeyWord.hashCode ^
      Contact.hashCode ^
      ShareTime.hashCode;
  }
}

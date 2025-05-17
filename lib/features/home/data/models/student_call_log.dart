class CallLog {
  int callLogId;
  int callerId;
  int contactId;
  String name;
  String contactNo;
  String relation;
  String startDateTime;
  String endDateTime;

  CallLog({
    required this.callLogId,
    required this.callerId,
    required this.contactId,
    required this.name,
    required this.contactNo,
    required this.relation,
    required this.startDateTime,
    required this.endDateTime,
  });

  factory CallLog.fromMap(Map<String, dynamic> json) {
    return CallLog(
      callLogId: json['CallLogId']?.toInt() ?? 0,
      callerId: json['CallerId']?.toInt() ?? 0,
      contactId: json['ContactId']?.toInt() ?? 0,
      name: json['Name'] ?? '',
      contactNo: json['ContactNo'] ?? '',
      relation: json['Relation'] ?? '',
      startDateTime: json['StartDateTime'] ?? '',
      endDateTime: json['EndDateTime'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'CallLogId': callLogId,
      'CallerId': callerId,
      'ContactId': contactId,
      'Name': name,
      'ContactNo': contactNo,
      'Relation': relation,
      'StartDateTime': startDateTime,
      'EndDateTime': endDateTime,
    };
  }
}

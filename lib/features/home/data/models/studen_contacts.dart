class ContactList {
  int contactId;
  int callerId;
  int friendlyId;
  int studentId;
  String studentName;
  String classSection;
  String name;
  String relation;
  String contactNo;

  ContactList({
    required this.contactId,
    required this.callerId,
    required this.friendlyId,
    required this.studentId,
    required this.studentName,
    required this.classSection,
    required this.name,
    required this.relation,
    required this.contactNo,
  });

  factory ContactList.fromMap(Map<String, dynamic> json) {
    return ContactList(
      contactId: json['ContactId']?.toInt() ?? 0,
      callerId: json['CallerId']?.toInt() ?? 0,
      friendlyId: json['FriendlyId']?.toInt() ?? 0,
      studentId: json['StudentId']?.toInt() ?? 0,
      studentName: json['StudentName'],
      classSection: json['ClassSection'],
      name: json['Name'] ?? '',
      relation: json['Relation'] ?? '',
      contactNo: json['ContactNo'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'ContactId': contactId,
      'CallerId': callerId,
      'FriendlyId': friendlyId,
      'StudentId': studentId,
      'StudentName': studentName,
      'ClassSection': classSection,
      'Name': name,
      'Relation': relation,
      'ContactNo': contactNo,
    };
  }
}

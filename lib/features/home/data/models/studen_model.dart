import 'studen_contacts.dart';
import 'student_call_log.dart';

class Student {
  int id;
  String guid;
  String qrCode;
  int studentId;
  String studentName;
  String classSectionName;
  int schoolId;
  List<CallLog> callLog;
  List<ContactList> contactList;
  String qrCodeBase64;

  Student({
    required this.id,
    required this.guid,
    required this.qrCode,
    required this.studentId,
    required this.studentName,
    required this.classSectionName,
    required this.schoolId,
    required this.callLog,
    required this.contactList,
    required this.qrCodeBase64,
  });

  factory Student.fromMap(Map<String, dynamic> json) {
    return Student(
      id: json['ID']?.toInt() ?? 0,
      guid: json['Guid'] ?? '',
      qrCode: json['QRCode'],
      studentId: json['StudentId']?.toInt() ?? 0,
      studentName: json['StudentName'] ?? '',
      classSectionName: json['ClassSectionName'] ?? '',
      schoolId: json['SchoolId']?.toInt() ?? 0,
      callLog: List<CallLog>.from(
        json['CallLog']?.map((x) => CallLog.fromMap(x)),
      ),
      contactList: List<ContactList>.from(
        json['ContactList']?.map((x) => ContactList.fromMap(x)),
      ),
      qrCodeBase64: json['QRCodeBase64'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'ID': id,
      'Guid': guid,
      'QRCode': qrCode,
      'StudentId': studentId,
      'StudentName': studentName,
      'ClassSectionName': classSectionName,
      'SchoolId': schoolId,
      'CallLog': callLog.map((e) => e.toJson()).toList(),
      'ContactList': contactList.map((e) => e.toJson()).toList(),
      'QRCodeBase64': qrCodeBase64,
    };
  }
}

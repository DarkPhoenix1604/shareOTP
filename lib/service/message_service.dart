import 'package:another_telephony/telephony.dart';
import 'package:permission_handler/permission_handler.dart';
// import 'package:sms_advanced/sms_advanced.dart' as sms;
// import 'package:telephony/telephony.dart';

import '../core/model/app_sms_model.dart';

abstract class MessageService {
  Future<PermissionStatus> requestPermisson();
  Future<List<SmsMessage>> messages();
  Future<AppSMSModel> send(AppSMSModel model);
}

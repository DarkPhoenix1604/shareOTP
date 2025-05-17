import 'package:another_telephony/telephony.dart';
import 'package:permission_handler/permission_handler.dart';
// import 'package:telephony/telephony.dart';

import '../../service/message_service.dart';
import '../model/app_sms_model.dart';
import '../utils/log_util.dart';

class MessageServiceImpl extends MessageService {
  final Telephony telephony;

  MessageServiceImpl(this.telephony);
  @override
  Future<List<SmsMessage>> messages() async {
    // SmsQuery query = SmsQuery();
    List<SmsMessage> smsList = await telephony.getInboxSms();
    return smsList;
  }

  @override
  Future<PermissionStatus> requestPermisson() async {
    try {
      var status = await Permission.sms.status;
      if (status.isDenied) {
        bool? permissionsGranted = await telephony.requestSmsPermissions;
        if (permissionsGranted != null && permissionsGranted) {
          return PermissionStatus.granted;
        }
        // return await Permission.sms.request();
      }
      return status;
    } catch (e) {
      return PermissionStatus.restricted;
    }
  }

  @override
  Future<AppSMSModel> send(AppSMSModel model) async {
    // sms.SmsSender sender = sms.SmsSender();
    // return await sender.sendSms(msg);
    LogUtility.info(model.toString());
    telephony.sendSms(
      to: model.to,
      message: model.body,
      isMultipart: true,
      statusListener: (status) {
        LogUtility.info('Status $status');
      },
    );
    return model;
  }
}

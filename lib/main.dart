import 'package:another_telephony/telephony.dart';
import 'package:flutter/material.dart';
// import 'package:telephony/telephony.dart';

import 'core/utils/log_util.dart';
import 'di/injection.dart';
import 'features/home/domain/entities/add_user.dart';
import 'features/home/domain/usecases/access_users_uses_cases.dart';
import 'provider.dart';

@pragma('vm:entry-point')
onBackgroundMessage(SmsMessage message) async {
  final AccessUsersUsesCases accessUsers = Injection.access;
  final response = await accessUsers();
  final List<AddAccessUser> users = response.fold((error) => [], (access) => access);
  for (var user in users) {
    LogUtility.info('Patter  ${user.pattern}');
    final exp = RegExp(r'' + user.pattern);
    LogUtility.info('ResutBasl   ${exp.hasMatch(message.body ?? '')}');
    if (exp.hasMatch(message.body ?? '') && user.enable) {
      Telephony.backgroundInstance.sendSms(
        to: user.number,
        message: message.body ?? '.',
        isMultipart: true,
      );
    }
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Injection.init();
  await initPlatformState();
  runApp(const AppProvider());
}

Future<void> initPlatformState() async {
  final telephony = Telephony.instance;
  final bool? result = await telephony.requestSmsPermissions;
  final AccessUsersUsesCases accessUsers = Injection.access;
  if (result != null && result) {
    telephony.listenIncomingSms(
      onNewMessage: (message) async {
        final response = await accessUsers();
        final List<AddAccessUser> users = response.fold((error) => [], (access) => access);
        for (var user in users) {
          LogUtility.info('Patter  ${user.pattern}');
          final exp = RegExp(r'' + user.pattern);
          LogUtility.info('Resutl   ${exp.hasMatch(message.body ?? '')}');
          if (exp.hasMatch(message.body ?? '') && user.enable) {
            Telephony.backgroundInstance.sendSms(
              to: user.number,
              message: message.body ?? '.',
              isMultipart: true,
            );
            // final newsms = AppSMSModel(body: message.body ?? '', to: user.number);
            // context.read<MessageBloc>().add(MessageEvent.send(newsms, -1));
          }
        }
      },
      onBackgroundMessage: onBackgroundMessage,
      listenInBackground: true,
    );
  }
}

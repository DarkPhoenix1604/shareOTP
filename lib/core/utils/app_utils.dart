import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';


class AppUtil {
    static const String timeFormate = 'hh:mm a';
  static const String dateFormate = 'dd-MM-yyyy'; //'dd-MM-yyyy'

  static DateTime get currentDate => DateTime.now();

  static TimeOfDay get currentTime => TimeOfDay.now();

  static DateTime datePlus(int year) {
    return DateTime(1990 + year);
  }

  static String parseDateWithTime(String value) {
    return DateFormat('$dateFormate $timeFormate').format(DateTime.tryParse(value)!.toLocal());
  }

  static String parseDate(String value) {
    return DateFormat(dateFormate).format(DateTime.tryParse(value)!.toLocal());
  }

  static String parseTime(TimeOfDay value) {
    final result =
        DateTime(currentDate.year, currentDate.month, currentDate.day, value.hour, value.minute);
    return DateFormat(timeFormate).format(result);
  }

  static String parseTimeFromString(String value) {
    final result = value.split(':');
    if (result.isNotEmpty) {
      return '${result[0]} Hour ${result[1]} Min';
    }
    return '--';
  }

  static String parseDateTime({required DateTime date, required TimeOfDay value}) {
    final timeFormate = DateTime(date.year, date.month, date.day, value.hour, value.minute);
    return DateFormat('yyyy-MM-dd hh:mm:ss a').format(timeFormate);
  }

  static DateTime combineDateTime({required DateTime date, required TimeOfDay value}) {
    return DateTime(date.year, date.month, date.day, value.hour, value.minute);
  }

  static DateTime combineDateWithCurrentTime(DateTime date) {
    return DateTime(date.year, date.month, date.day, currentDate.hour, currentDate.minute);
  }

  static DateTime onlyDate(DateTime date) {
    return DateTime(date.year, date.month, date.day, date.hour, date.minute);
  }

  static List<TextInputFormatter> empyCodeLimit = [
    LengthLimitingTextInputFormatter(4),
  ];

  static statusBar() {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  }

  static void unfocus(BuildContext context) {
    FocusScope.of(context).unfocus();
  }
  // static List<Role> parseRoles(List<String> roles) {
  //   return Role.values.where((e) => roles.contains(e.name.toUpperCase())).toList();
  // }

  // static Role parseRole(String role) {
  //   return Role.values.firstWhere(
  //     (e) => role.contains(e.name.toUpperCase()),
  //     orElse: () => Role.none,
  //   );
  // }


}



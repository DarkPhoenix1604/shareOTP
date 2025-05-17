import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:share_otp/core/utils/log_util.dart';
import '../../../../api/shared_key.dart';
import '../../../../core/error/success.dart';

import '../../../../core/utils/type_def.dart';
import '../../../../service/local_storage_service.dart';
import '../../domain/entities/add_user.dart';
import '../models/add_access_user_model.dart';
import 'home_data_source.dart';

class HomeDataSourceImpl extends HomeDataSource {
  static const String key = 'users';
  final LocalStorage localStorage;
  HomeDataSourceImpl({required this.localStorage});
  @override
  AppTypeResponse<List<AddAccessUserModel>> accessUsers() async {
    final initUser = await localStorage.read(SharedKey.accessUsers);
    if (initUser != null) {
      final parseInitUsers = json.decode(initUser) as Map<String, dynamic>;
      LogUtility.info('User $initUser');
      final users = (parseInitUsers[key] ?? []) as List;
      final accessUsers = <AddAccessUserModel>[];
      for (var item in users) {
        accessUsers.add(AddAccessUserModel.fromMap(item));
      }
      return Right(accessUsers);
    } else {
      return const Right([]);
    }
  }

  @override
  AppSuccessResponse addUser(AddAccessUser accessUser) async {
    final initUser = await localStorage.read(SharedKey.accessUsers);
    if (initUser != null) {
      final parseInitUsers = json.decode(initUser) as Map<String, dynamic>;
      LogUtility.info('User $initUser');
      final users = (parseInitUsers[key] ?? []) as List;
      final exisit = users.firstWhereOrNull((element) => element['number'] == accessUser.number);
      if (exisit != null) {
        users.removeWhere((element) => element['number'] == accessUser.number);
      }
      users.add(accessUser.toMap());
      final decode = json.encode({key: users});
      final item = SecureStorageItem(key: SharedKey.accessUsers, value: decode);
      await localStorage.write(item);
    } else {
      final decode = json.encode(
        {
          key: [accessUser.toMap()]
        },
      );
      final item = SecureStorageItem(key: SharedKey.accessUsers, value: decode);
      await localStorage.write(item);
    }

    return const Right(SuccessMessage(message: 'Added'));
  }
}

/*
 {
  users :[
  
      ]
  
 }
 

 */

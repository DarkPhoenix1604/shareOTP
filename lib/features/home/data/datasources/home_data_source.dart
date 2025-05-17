import 'package:share_otp/core/utils/type_def.dart';

import '../../domain/entities/add_user.dart';
import '../models/add_access_user_model.dart';

abstract class HomeDataSource {
  AppSuccessResponse addUser(AddAccessUser accessUser);
  AppTypeResponse<List<AddAccessUserModel>> accessUsers();
}

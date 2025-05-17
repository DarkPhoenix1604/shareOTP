import 'package:share_otp/features/home/domain/repositories/home_repository.dart';

import '../../../../core/utils/type_def.dart';
import '../entities/add_user.dart';

class AddAccessUsersUsesCases {
  final HomeRepository homeRepository;

  AddAccessUsersUsesCases(this.homeRepository);
  AppSuccessResponse call(AddAccessUser accessUser) {
    return homeRepository.addUser(accessUser);
  }
}

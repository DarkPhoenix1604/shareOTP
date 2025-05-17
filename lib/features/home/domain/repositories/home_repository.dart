
import '../../../../core/utils/type_def.dart';
import '../entities/add_user.dart';

abstract class HomeRepository {
  AppSuccessResponse addUser(AddAccessUser accessUser);
  AppTypeResponse<List<AddAccessUser>> accessUsers();
}


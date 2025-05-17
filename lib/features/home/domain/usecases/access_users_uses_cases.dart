import '../../../../core/utils/type_def.dart';
import '../entities/add_user.dart';
import '../repositories/home_repository.dart';

class AccessUsersUsesCases {
  final HomeRepository homeRepository;

  AccessUsersUsesCases(this.homeRepository);
  AppTypeResponse<List<AddAccessUser>> call() {
    return homeRepository.accessUsers();
  }
}

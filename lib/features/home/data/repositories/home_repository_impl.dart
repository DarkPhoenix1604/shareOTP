import '../../../../core/utils/type_def.dart';
import '../../domain/entities/add_user.dart';
import '../../domain/repositories/home_repository.dart';
import '../datasources/home_data_source.dart';

class HomeRepositoryImpl extends HomeRepository {
  final HomeDataSource _homeDataSource;

  HomeRepositoryImpl(this._homeDataSource);
  @override
  AppTypeResponse<List<AddAccessUser>> accessUsers() {
    return _homeDataSource.accessUsers();
  }

  @override
  AppSuccessResponse addUser(AddAccessUser accessUser) {
    return _homeDataSource.addUser(accessUser);
  }
}

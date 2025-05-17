import 'package:another_telephony/telephony.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
// import 'package:telephony/telephony.dart';

import '../core/service/app_http_service_impl.dart';
import '../core/service/local_storage_service_impl.dart';
import '../core/service/message_service_impl.dart';
import '../core/utils/custom_interceptor.dart';
import '../features/home/data/datasources/home_data_source.dart';
import '../features/home/data/datasources/home_data_source_impl.dart';
import '../features/home/data/repositories/home_repository_impl.dart';
import '../features/home/domain/repositories/home_repository.dart';
import '../features/home/domain/usecases/access_users_uses_cases.dart';
import '../features/home/domain/usecases/add_access_users_uses_cases.dart';
import '../features/home/presentation/bloc/access_user.dart/acces_users_bloc.dart';
import '../features/home/presentation/bloc/message/message_bloc.dart';
import '../service/app_http_service.dart';
import '../service/local_storage_service.dart';
import '../service/message_service.dart';

late final GetIt getIt;

class Injection {
  static MessageBloc get messageBloc {
    return MessageBloc(
      messageService: getIt<MessageService>(),
    );
  }

  static AccessUserBloc get accessUserBloc {
    return AccessUserBloc(
      accessUsers: getIt<AccessUsersUsesCases>(),
      addAccessUsers: getIt<AddAccessUsersUsesCases>(),
    );
  }

  static AccessUsersUsesCases get access {
    const flutterSecureStorage = FlutterSecureStorage();
    final storage = LocalStorageImpl(flutterSecureStorage);
    final homeDataSource = HomeDataSourceImpl(localStorage: storage);
    final HomeRepository homeRepository = HomeRepositoryImpl(homeDataSource);
    final accessUsersUsesCases = AccessUsersUsesCases(homeRepository);
    return accessUsersUsesCases;
  }

  static Future<void> init() async {
    ///
    getIt = GetIt.instance;

    ///
    final Dio dio = Dio();
    dio.interceptors.add(CustomInterceptor());
    getIt.registerSingleton<Dio>(dio);

    ///
    const flutterSecureStorage = FlutterSecureStorage();
    getIt.registerSingleton<FlutterSecureStorage>(flutterSecureStorage);

    ///
    final storage = LocalStorageImpl(getIt<FlutterSecureStorage>());
    getIt.registerSingleton<LocalStorage>(storage);

    ///
    final http = AppHttpImpl(getIt<Dio>(), getIt<LocalStorage>());
    getIt.registerSingleton<AppHttp>(http);
    final telephony = Telephony.instance;
    final MessageService messageService = MessageServiceImpl(telephony);
    getIt.registerLazySingleton<MessageService>(() => messageService);

    // Home
    final homeDataSource = HomeDataSourceImpl(localStorage: getIt<LocalStorage>());
    getIt.registerLazySingleton<HomeDataSource>(() => homeDataSource);

    final HomeRepository homeRepository = HomeRepositoryImpl(getIt<HomeDataSource>());
    getIt.registerLazySingleton<HomeRepository>(() => homeRepository);

    final addAccessUsersUsesCases = AddAccessUsersUsesCases(getIt<HomeRepository>());
    final accessUsersUsesCases = AccessUsersUsesCases(getIt<HomeRepository>());

    getIt.registerLazySingleton<AddAccessUsersUsesCases>(() => addAccessUsersUsesCases);
    getIt.registerLazySingleton<AccessUsersUsesCases>(() => accessUsersUsesCases);

    // Home End

    // ///
    // /// Auth Repositories
    // final authDataSource = AuthDataSourceImpl(
    //   http: getIt<AppHttp>(),
    //   localStorage: getIt<LocalStorage>(),
    // );
    // getIt.registerSingleton<AuthDataSource>(authDataSource);

    // final authRepository = AuthRepositoryImpl(getIt<AuthDataSource>());
    // getIt.registerSingleton<AuthRepository>(authRepository);

    // /// Auth
    // final autoLogin = AutoLogin(getIt<AuthRepository>());
    // final logout = Logout(getIt<AuthRepository>());
    // final currentUser = GetCurrentUser(getIt<AuthRepository>());
    // final sendOtp = SendOtp(getIt<AuthRepository>());
    // final verifyOtp = VerifyOtp(getIt<AuthRepository>());
    // final signup = Signup(getIt<AuthRepository>());
    // final login = Login(getIt<AuthRepository>());
    // final distict = DistrictUsescases(getIt<AuthRepository>());
    // final school = SchoolUsescases(getIt<AuthRepository>());
    // final grade = GradeUsescases(getIt<AuthRepository>());
    // final storeToken = StoreToken(getIt<AuthRepository>());
    // final accountDeletRequestUsescases = AccountDeletRequestUsescases(getIt<AuthRepository>());
    // final joinWaitingList = JoinWaitingList(getIt<AuthRepository>());

    // getIt.registerLazySingleton<AutoLogin>(() => autoLogin);
    // getIt.registerLazySingleton<Logout>(() => logout);
    // getIt.registerLazySingleton<GetCurrentUser>(() => currentUser);
    // getIt.registerLazySingleton<SendOtp>(() => sendOtp);
    // getIt.registerLazySingleton<VerifyOtp>(() => verifyOtp);
    // getIt.registerLazySingleton<Signup>(() => signup);
    // getIt.registerLazySingleton<Login>(() => login);
    // getIt.registerLazySingleton<DistrictUsescases>(() => distict);
    // getIt.registerLazySingleton<SchoolUsescases>(() => school);
    // getIt.registerLazySingleton<GradeUsescases>(() => grade);
    // getIt.registerLazySingleton<StoreToken>(() => storeToken);
    // getIt.registerLazySingleton<AccountDeletRequestUsescases>(() => accountDeletRequestUsescases);
    // getIt.registerLazySingleton<JoinWaitingList>(() => joinWaitingList);

    /// Home Data Source

    ///
  }
}

import 'package:darul_falah/core/presentation/cubit/bottom_nav_cubit.dart';
import 'package:darul_falah/features/auth/data/datasources/auth_local_data_source.dart';
import 'package:darul_falah/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:darul_falah/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:darul_falah/features/auth/domain/repositories/auth_repository.dart';
import 'package:darul_falah/features/auth/domain/usecases/auth_login.dart';
import 'package:darul_falah/features/auth/domain/usecases/auth_logout.dart';
import 'package:darul_falah/features/auth/domain/usecases/auth_register.dart';
import 'package:darul_falah/features/auth/domain/usecases/get_token.dart';
import 'package:darul_falah/features/auth/domain/usecases/save_token.dart';
import 'package:darul_falah/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void init() {
  locator.registerFactory(
    () => AuthCubit(
      authLogin: locator(),
      authRegister: locator(),
      authLogout: locator(),
      getToken: locator(),
      saveToken: locator(),
    ),
  );

  locator.registerFactory(() => BottomNavCubit());

  locator.registerLazySingleton(() => AuthLogin(locator()));
  locator.registerLazySingleton(() => AuthRegister(locator()));
  locator.registerLazySingleton(() => AuthLogout(locator()));
  locator.registerLazySingleton(() => GetToken(locator()));
  locator.registerLazySingleton(() => SaveToken(locator()));

  locator.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      remoteDataSource: locator(),
      localDataSource: locator(),
    ),
  );

  locator.registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImpl());
  locator.registerLazySingleton<AuthLocalDataSource>(
      () => AuthLocalDataSourceImpl(secureStorage: locator()));

  locator.registerLazySingleton(() => const FlutterSecureStorage());
}

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/home/data/repos/home_repo_impl.dart';
import 'api_service.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  // Register your services and repositories here
  // Example:
  //   getIt.registerLazySingleton<ApiService>(() => ApiService(Dio()));
  //   getIt.registerLazySingleton<HomeRepo>(() => HomeRepoImpl(getIt<ApiService>()));
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt<ApiService>()));

}

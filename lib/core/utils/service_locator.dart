import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../constants.dart';
import '../../features/home/data/repos/home_repo_impl.dart';
import 'api_service.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  // Dio instance
  getIt.registerLazySingleton<Dio>(() {
    final dio = Dio(
      BaseOptions(
        baseUrl: kBaseUrl,
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
      ),
    );
    // s
    return dio;
  });
  // ApiService
  getIt.registerLazySingleton<ApiService>(() => ApiService(getIt<Dio>()));
  // HomeRepoImpl
  getIt.registerLazySingleton<HomeRepoImpl>(
    () => HomeRepoImpl(getIt<ApiService>()),
  );
}

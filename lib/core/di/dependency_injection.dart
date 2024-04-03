import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:promina_angency_task/core/networking/api_handler.dart';
import 'package:promina_angency_task/features/login/data/repo/login_repo.dart';
import 'package:promina_angency_task/features/login/presentation/cubit/login_cubit.dart';

final getIt = GetIt.instance;

void initGetIt() {
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<ApiHandler>(
      () => ApiHandler(createDioandSetupInterceptors()));
}

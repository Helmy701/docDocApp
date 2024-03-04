import 'package:dio/dio.dart';
import 'package:docdoc/core/networking/api_service.dart';
import 'package:docdoc/core/networking/dio_factory.dart';
import 'package:docdoc/features/login/data/repos/login_repo.dart';
import 'package:docdoc/features/login/logic/cubit/login_cubit.dart';
import 'package:get_it/get_it.dart';

// registerLazy => create one instance
// registerFactory => when I want to use this thing more than one time and everytime I will creat object in every usage

final getIt = GetIt.instance;
Future<void> setupGetIt() async {
  // Dio and ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  //login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));
}

import 'package:flutterdoc/Features/login/data/repos/login_repo.dart';
import 'package:flutterdoc/Features/login/logic/cubit/login_cubit.dart';
import 'package:flutterdoc/Features/sign_up/data/repos/sign_up_repo.dart';
import 'package:flutterdoc/Features/sign_up/logic/sign_up_cubit.dart';
import 'package:flutterdoc/core/networking/api_service.dart';
import 'package:flutterdoc/core/networking/dio_factory.dart';
import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';

final getIt = GetIt.instance;
Future<void> setupGetIt() async {
  // dio & Apiservice
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  // login repo
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  // login cubit
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
  // signup repo
  getIt.registerLazySingleton<SignUpRepo>(() => SignUpRepo(getIt()));
  // signup cubit
  getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt()));
}

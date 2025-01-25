import 'package:full_store_app/core/app/app_cubit/app_cubit.dart';
import 'package:full_store_app/core/service/graphql/api_service.dart';
import 'package:full_store_app/core/service/graphql/dio_factory.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> setupInjector() async {
  await _initCore();
}

Future<void> _initCore() async {
  final dio = DioFactory.getDio();
  sl.registerFactory(() => AppCubit());
  sl.registerLazySingleton<ApiService>(() => ApiService(dio));
}

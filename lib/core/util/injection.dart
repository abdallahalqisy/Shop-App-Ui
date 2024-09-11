// import 'package:dio/dio.dart';
// import 'package:get_it/get_it.dart';
// import 'package:shopapp/core/util/my_repo.dart';
// import 'package:shopapp/core/util/web_service.dart';
// import 'package:shopapp/cubit/my_cubit.dart';

// final getIt = GetIt.instance;

// void initGetIt() {
//   getIt.registerLazySingleton<MyCubit>(() => MyCubit(getIt()));

//   GetIt.I.registerLazySingleton<MyRepo>(() => MyRepo(getIt()));
//   GetIt.I.registerLazySingleton<WebServices>(() => WebServices(Dio()));

//   // Dio createAndSetupDio() {
//   //   final dio = Dio();
//   //   dio.interceptors.add(LogInterceptor());
//   //   return dio;
//   // }
// }

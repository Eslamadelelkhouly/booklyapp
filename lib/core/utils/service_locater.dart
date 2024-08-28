import 'package:booklyapp/core/utils/api_services.dart';
import 'package:booklyapp/features/home/data/repos/home_repo.dart';
import 'package:booklyapp/features/home/data/repos/home_repo_implementaion.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

void SetupSeriveLocater() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));

  // Register HomeRepo as a singleton
  getIt.registerSingleton<HomeRepo>(
    HomeRepoImplementaion(apiService: getIt.get<ApiService>()),
  );
}

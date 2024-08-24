import 'package:booklyapp/core/utils/api_services.dart';
import 'package:booklyapp/features/home/data/repos/home_repo_implementaion.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void SetupSeriveLocater() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));

  getIt.registerSingleton<HomeRepoImplementaion>(
    HomeRepoImplementaion(apiService: getIt.get<ApiService>()), // Use named parameter
  );
}

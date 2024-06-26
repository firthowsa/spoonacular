//responsible for injecting our dependencies using the
// get_it package.

import 'package:awesome_dio_interceptor/awesome_dio_interceptor.dart';
import 'package:dio/dio.dart';

import 'package:get_it/get_it.dart';


import 'data/datasources/local/isar_service.dart';
import 'data/datasources/remote/api_service.dart';
import 'data/repositories/api_repository_impl.dart';
import 'data/repositories/database_repository.dart';
import 'domain/repositories/api_repository.dart';

final locator = GetIt.instance;

Future<void> initializeDependencies() async {


  final dio = Dio();
  dio.interceptors.add(AwesomeDioInterceptor());

  locator.registerSingleton<Dio>(dio);

  locator.registerSingleton<ApiService>(
    ApiService(locator<Dio>()),
  );

  locator.registerSingleton<ApiRepository>(
    ApiRepositoryImpl(locator<ApiService>()),
  );

  // Initialize and register IsarService
  final isarService = IsarService();
  await isarService.db; // Ensure the database is opened
  locator.registerSingleton<IsarService>(isarService);

  // Register DatabaseRepository
  locator.registerSingleton<DatabaseRepository>(
    DatabaseRepository(locator<IsarService>(), locator<ApiRepository>()),
  );

}
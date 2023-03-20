import 'package:alfateam/src/data/datasources/local/prefs_service.dart';
import 'package:alfateam/src/data/datasources/remote/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final injector = GetIt.instance;

Future<void> initializeDependencies() async {
  injector.registerSingleton<Dio>(Dio());

  //////////////////////////////////////////////////////////////////////////////
  ///////////////////////            API             ///////////////////////////
  injector.registerSingleton<ApiService>(ApiService(
    injector(),
  ));
}

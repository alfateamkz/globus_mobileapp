import 'package:globus/src/config/dio/dio_client.dart';
import 'package:globus/src/data/datasources/remote/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:globus/src/data/repositories/activities_repository_impl.dart';
import 'package:globus/src/data/repositories/discussions_repository_impl.dart';
import 'package:globus/src/domain/repositories/activities_repository.dart';
import 'package:globus/src/domain/repositories/discussions_repository.dart';
import 'package:globus/src/presentation/blocs/activities/activities_bloc.dart';
import 'package:globus/src/presentation/blocs/discussions/discussions_bloc.dart';

final locator = GetIt.instance;

Future<void> initializeDependencies() async {
  final dio = DioClient.createDio();
  locator.registerSingleton<Dio>(dio);


  //////////////////////////////////////////////////////////////////////////////
  ///////////////////////            API             ///////////////////////////
  locator.registerSingleton<ApiService>(ApiService(
    locator(),
  ));


  ///////////Repositories
    locator.registerSingleton<ActivitiesRepository>(
    ActivitiesRepositoryImpl(locator<ApiService>(),),
  );
    locator.registerSingleton<DiscussionsRepository>(
    DiscussionsRepositoryImpl(locator<ApiService>(),),
  );


  ////////////Bloc
  locator.registerSingleton<ActivitiesBloc>(ActivitiesBloc(
    locator(),
  ));
  locator.registerSingleton<DiscussionsBloc>(DiscussionsBloc(
    locator(),
  ));
}

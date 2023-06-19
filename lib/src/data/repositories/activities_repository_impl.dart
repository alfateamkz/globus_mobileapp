import 'package:globus/src/core/resources/data_state.dart';
import 'package:globus/src/data/datasources/remote/api_service.dart';
import 'package:globus/src/domain/models/responses/activities_response.dart';
import 'package:globus/src/domain/repositories/activities_repository.dart';

import 'base/base_api_repository.dart';

class ActivitiesRepositoryImpl extends BaseApiRepository
    implements ActivitiesRepository {
  final ApiService _apiService;
  ActivitiesRepositoryImpl(
    this._apiService,
  );

  @override
  Future<DataState<ActivitiesResponse>> getActivities() {
    return getStateOf<ActivitiesResponse>(
      request: () => _apiService.getActivities(),
    );
  }
}

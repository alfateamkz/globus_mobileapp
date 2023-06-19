import 'package:globus/src/core/resources/data_state.dart';
import 'package:globus/src/data/datasources/remote/api_service.dart';
import 'package:globus/src/domain/models/responses/activities_response.dart';
import 'package:globus/src/domain/models/responses/discussion_response.dart';
import 'package:globus/src/domain/repositories/activities_repository.dart';
import 'package:globus/src/domain/repositories/discussions_repository.dart';

import 'base/base_api_repository.dart';

class DiscussionsRepositoryImpl extends BaseApiRepository
    implements DiscussionsRepository {
  final ApiService _apiService;
  DiscussionsRepositoryImpl(
    this._apiService,
  );

  @override
  Future<DataState<DiscussionsResponse>> getDiscussions() {
    return getStateOf<DiscussionsResponse>(
      request: () => _apiService.getDiscussions(),
    );
  }
}

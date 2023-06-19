

import 'package:globus/src/core/resources/data_state.dart';
import 'package:globus/src/domain/models/responses/activities_response.dart';

abstract class ActivitiesRepository {
  Future<DataState<ActivitiesResponse>> getActivities();
}

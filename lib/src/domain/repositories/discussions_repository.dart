import 'package:globus/src/core/resources/data_state.dart';
import 'package:globus/src/domain/models/responses/discussion_response.dart';

abstract class DiscussionsRepository {
  Future<DataState<DiscussionsResponse>> getDiscussions();
}
  
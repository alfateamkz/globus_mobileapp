import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:globus/src/core/resources/data_state.dart';
import 'package:globus/src/domain/models/responses/activities_response.dart';
import 'package:globus/src/domain/models/responses/discussion_response.dart';
import 'package:globus/src/domain/repositories/activities_repository.dart';
import 'package:globus/src/domain/repositories/discussions_repository.dart';

part 'discussions_event.dart';
part 'discussions_state.dart';

class DiscussionsBloc extends Bloc<DiscussionsEvent, DiscussionsState> {
  final DiscussionsRepository _apiService;
  DiscussionsBloc(this._apiService) : super(const DiscussionsInitial()) {
    on<DiscussionsGetStart>((event, emit) async {
      emit(const DiscussionsLoading());
      DataState dataState = await _apiService.getDiscussions();
      if (dataState is DataSuccess) {
        DiscussionsResponse _discussions = dataState.data;
        emit(DiscussionsSuccess(_discussions));
      }
      if (dataState is DataFailed) {
        emit(const DiscussionsFailed());
      }
    });
  }
}

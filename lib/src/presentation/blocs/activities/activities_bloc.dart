import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:globus/src/core/resources/data_state.dart';
import 'package:globus/src/domain/models/responses/activities_response.dart';
import 'package:globus/src/domain/repositories/activities_repository.dart';

part 'activities_event.dart';
part 'activities_state.dart';

class ActivitiesBloc extends Bloc<ActivitiesEvent, ActivitiesState> {
  final ActivitiesRepository _apiService;
  ActivitiesBloc(this._apiService) : super(const ActivitiesInitial()) {
    on<ActivitiesGetStart>((event, emit) async {
      emit(const ActivitiesLoading());
      DataState dataState = await _apiService.getActivities();
      if (dataState is DataSuccess) {
        ActivitiesResponse _activities = dataState.data;
        emit(ActivitiesSuccess(_activities));
      }
      if (dataState is DataFailed) {
        emit(const ActivitiesFailed());
      }
    });
  }
}

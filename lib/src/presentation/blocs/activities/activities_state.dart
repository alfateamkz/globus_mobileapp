part of 'activities_bloc.dart';

abstract class ActivitiesState extends Equatable {
  final bool isLoading;
  const ActivitiesState({required this.isLoading});

  @override
  List<Object> get props => [];
}

class ActivitiesInitial extends ActivitiesState {
  const ActivitiesInitial() : super(isLoading: false);
}

class ActivitiesLoading extends ActivitiesState {
  const ActivitiesLoading() : super(isLoading: true);
}

class ActivitiesSuccess extends ActivitiesState {
  final ActivitiesResponse activities;
  const ActivitiesSuccess(this.activities) : super(isLoading: false);
}

class ActivitiesFailed extends ActivitiesState {
  const ActivitiesFailed() : super(isLoading: true);
}

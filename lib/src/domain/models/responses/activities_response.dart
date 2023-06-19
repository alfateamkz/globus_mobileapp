import 'package:equatable/equatable.dart';
import 'package:globus/src/domain/models/activity/activity.dart';

class ActivitiesResponse extends Equatable {
  final List<Activity> activities;
  final List<Activity> smallActivities;

  const ActivitiesResponse(
      {required this.activities, required this.smallActivities});

  factory ActivitiesResponse.fromJson(Map<String, dynamic> json) {
    return ActivitiesResponse(
      activities: List<Activity>.from(
          (json['activities'] as List<dynamic>? ?? [])
              .map((e) => Activity.fromJson(e as Map<String, dynamic>))),
      smallActivities: List<Activity>.from(
          (json['smallActivities'] as List<dynamic>? ?? [])
            .map((e) => Activity.fromJson(e as Map<String, dynamic>? ?? {}))),
    );
  }

  @override
  List<Object?> get props => [activities, smallActivities];
}

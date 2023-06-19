import 'package:equatable/equatable.dart';

class ActivitySubtitle extends Equatable {
  final String? started;
  final String? updated;
  final String? finished;
  final String? color;
  const ActivitySubtitle({
     this.started,
     this.updated,
     this.finished,
     this.color,
  });
  factory ActivitySubtitle.fromJson(Map<String, dynamic> json) {
    return ActivitySubtitle(
        started: json['started'] as String?,
        updated: json['updated'] as String?,
        finished: json['finished'] as String?,
        color: json['color'] as String?,
        );
  }
  @override
  List<Object?> get props => [started, updated, finished, color];
}

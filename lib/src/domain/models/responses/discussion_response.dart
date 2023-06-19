import 'package:equatable/equatable.dart';
import 'package:globus/src/domain/models/discussion/discussion.dart';

class DiscussionsResponse extends Equatable {
  final List<Discussion> discussions;
  const DiscussionsResponse({required this.discussions});

  factory DiscussionsResponse.fromJson(Map<String, dynamic> json) {
    return DiscussionsResponse(
      discussions: List<Discussion>.from(
          (json['discussions'] as List<dynamic>? ?? [])
              .map((e) => Discussion.fromJson(e as Map<String, dynamic>))),
    );
  }

  @override
  List<Object?> get props => [discussions];
}

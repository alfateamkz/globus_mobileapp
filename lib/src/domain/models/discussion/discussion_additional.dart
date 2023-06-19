import 'package:equatable/equatable.dart';
import 'package:globus/src/domain/models/discussion/discussion_icon.dart';

class DiscussionAdditional extends Equatable {
  final String text;
  final DiscussionIcon icon;
  const DiscussionAdditional({required this.text, required this.icon});

  factory DiscussionAdditional.fromJson(Map<String, dynamic> json) {
    return DiscussionAdditional(
      text: json['text'] as String,
      icon: DiscussionIcon.fromJson(json['icon'] as Map<String, dynamic>),
    );
  }

  @override
  List<Object?> get props => [text, icon];
}

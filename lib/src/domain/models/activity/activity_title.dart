import 'package:equatable/equatable.dart';

class ActivityTitle extends Equatable {
  final String text;
  final String color;

  const ActivityTitle({
    required this.text,
    required this.color,
  });
  factory ActivityTitle.fromJson(Map<String, dynamic> json) {
    return ActivityTitle(
      text: json['text'] as String,
      color: json['color'] as String,
    );
  }
  @override
  List<Object?> get props => [text, color];
}

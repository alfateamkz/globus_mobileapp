import 'package:equatable/equatable.dart';

class DiscussionIcon extends Equatable {
  final String url;
  final String color;
  const DiscussionIcon({
    required this.color,
    required this.url,
  });
  factory DiscussionIcon.fromJson(Map<String, dynamic> json) {
    return DiscussionIcon(
      url: json['url'] as String,
      color: json['color'] as String,
    );
  }
  @override
  List<Object?> get props => [url, color];
}

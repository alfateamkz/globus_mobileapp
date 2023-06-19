import 'package:equatable/equatable.dart';

class ActivityImage extends Equatable {
  final String url;
  final bool isIcon;
  final String? color;

  const ActivityImage({
    required this.url,
    required this.isIcon,
    this.color
  });
factory ActivityImage.fromJson(Map<String, dynamic> json) {
    return ActivityImage(
      url: json['url'] as String,
      isIcon: json['isIcon'] as bool,
      color: json['color'] as String?);
  }
  @override
  List<Object?> get props => [url, isIcon, color];
}

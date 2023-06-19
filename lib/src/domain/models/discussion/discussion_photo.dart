import 'package:equatable/equatable.dart';

class DiscussionPhoto extends Equatable {
  final String? small;
  final String? big;
  const DiscussionPhoto({this.small,  this.big});
  factory DiscussionPhoto.fromJson(Map<String, dynamic> json) {
    return DiscussionPhoto(
      small: json['small'] as String?,
      big: json['big'] as String? ,
    );
  }
  @override
  List<Object?> get props => [small, big];
}

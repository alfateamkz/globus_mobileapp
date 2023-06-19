import 'package:equatable/equatable.dart';

class DiscussionLikes extends Equatable {
  final int sum;
  const DiscussionLikes({required this.sum});
  factory DiscussionLikes.fromJson(Map<String, dynamic> json) {
    return DiscussionLikes(
      sum: json['sum'] as int? ?? 0,
    );
  }
  @override
  List<Object?> get props => [sum];
}

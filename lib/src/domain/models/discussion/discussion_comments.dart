import 'package:equatable/equatable.dart';
import 'package:globus/src/domain/models/discussion/discussion_likes.dart';
import 'package:globus/src/domain/models/discussion/discussion_photo.dart';
import 'package:globus/src/domain/models/person/person.dart';

class DiscussionComments extends Equatable {
  final int id;
  final DiscussionPhoto? image;
  final String? publishedDate;
  final Person? member;
  final DiscussionLikes? likes;
  final int? commentsSum;
  final int? parentCommitId;
  const DiscussionComments({
    required this.id,
    this.image,
    this.publishedDate ,
    this.member ,
    this.likes ,
    this.commentsSum ,
    this.parentCommitId ,
  });

factory DiscussionComments.fromJson(Map<String, dynamic> json) {
    return DiscussionComments(
      id: json['id'] as int,
      image:  DiscussionPhoto?.fromJson(json["image"] as Map<String, dynamic>? ?? {}),
      publishedDate: json['publishedDate'] as String?,
      member: Person?.fromJson(json['member'] as Map<String, dynamic>? ?? {}),
      likes: DiscussionLikes?.fromJson(json['likes'] as Map<String, dynamic>? ?? {}),
      commentsSum: json['commentsSum'] as int?,
      parentCommitId: json['parentCommitId'] as int?,
    );
  }


  @override
  List<Object?> get props => [id];
}

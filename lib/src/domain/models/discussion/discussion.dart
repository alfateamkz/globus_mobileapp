import 'package:equatable/equatable.dart';
import 'package:globus/src/domain/models/discussion/discussion_additional.dart';
import 'package:globus/src/domain/models/discussion/discussion_comments.dart';
import 'package:globus/src/domain/models/discussion/discussion_likes.dart';
import 'package:globus/src/domain/models/discussion/discussion_photo.dart';

class Discussion extends Equatable {
  final int id;
  final int activityId;
  final String title;
  final String? publishedDate;
  final String? description;
  final DiscussionPhoto photo;
  final DiscussionAdditional additional;
  final bool dislikes;
  final DiscussionLikes likes;
  final List<DiscussionComments> comments;
  final int commentsSum;

  const Discussion({
    required this.id,
    required this.activityId,
    required this.title,
    this.publishedDate,
    this.description,
    required this.photo,
    required this.additional,
    required this.dislikes,
    required this.likes,
    required this.comments,
    required this.commentsSum,
  });

  factory Discussion.fromJson(Map<String, dynamic> json) {
    return Discussion(
      id: json['id'] as int,
      activityId: json['activityId'] as int,
      title: json['title'] as String,
      publishedDate: json['publishedDate'] as String?,
      description: json['description'] as String?,
      photo: DiscussionPhoto.fromJson(json['photo'] as Map<String, dynamic>),
      additional:
          DiscussionAdditional.fromJson(json['additional'] as Map<String, dynamic>),
      dislikes: json['dislikes'] as bool,
      likes: DiscussionLikes.fromJson(json['likes'] as Map<String, dynamic>),
      comments: List<DiscussionComments>.from(
          (json['comments'] as List<dynamic>? ?? []).map(
              (e) => DiscussionComments.fromJson(e as Map<String, dynamic>))),
 commentsSum: json['commentsSum'] as int,
    );
  }

  @override
  List<Object?> get props => [id, activityId, title];
}

import 'package:equatable/equatable.dart';
import 'package:globus/src/domain/models/activity/activity_block.dart';
import 'package:globus/src/domain/models/activity/activity_image.dart';
import 'package:globus/src/domain/models/activity/activity_subtitle.dart';
import 'package:globus/src/domain/models/activity/activity_title.dart';

class Activity extends Equatable {
  final int id;
  final ActivityTitle title;
  final String? projects;
  final String? project;
  final String status;
  final String type;
  final bool? isNewsCopy;
  final int count;
  final ActivityBlock block;
  final ActivityImage image;
  final ActivitySubtitle? subtitle;
  final List<int> members;
  final List<int> userRoles;

  const Activity(
      {required this.id,
      required this.title,
      this.projects,
      this.project,
      required this.status,
      required this.type,
      this.isNewsCopy,
      required this.count,
      required this.block,
      required this.image,
      this.subtitle,
      required this.members,
      required this.userRoles});
  factory Activity.fromJson(Map<String, dynamic> json) {
    return Activity(
      id: json['id'] as int,
      title: ActivityTitle.fromJson(json['title'] as Map<String, dynamic>),
      projects: json['projects'] as String?,
      project: json['project'] as String?,
      status: json['status'] as String,
      type: json['type'] as String,
      isNewsCopy: json['isNewsCopy'] as bool?,
      count: json['count'] as int,
      block: ActivityBlock.fromJson(json['block'] as Map<String, dynamic>),
      image: ActivityImage.fromJson(json['image'] as Map<String, dynamic>),
      subtitle: ActivitySubtitle.fromJson(
          json['subtitle'] as Map<String, dynamic>? ?? {}),
      members: List<int>.from((json['members'] as List<dynamic>)),
      userRoles: List<int>.from((json['userRoles'] as List<dynamic>)),
    );
  }
  @override
  List<Object?> get props => [id];
}

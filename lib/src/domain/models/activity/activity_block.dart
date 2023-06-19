import 'package:equatable/equatable.dart';
import 'package:globus/src/domain/models/activity/activity_block_small.dart';

class ActivityBlock extends Equatable {
  final bool isSmall;
  final ActivityBlockSmall? small;

  const ActivityBlock({required this.isSmall, this.small});
  factory ActivityBlock.fromJson(Map<String, dynamic> json) {
    return ActivityBlock(
        isSmall: json['isSmall'] as bool,
        small:
            ActivityBlockSmall.fromJson(json['small'] as Map<String, dynamic>? ?? {}));
  }
  @override
  List<Object?> get props => [isSmall, small];
}

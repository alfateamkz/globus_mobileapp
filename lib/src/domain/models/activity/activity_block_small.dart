import 'package:equatable/equatable.dart';

class ActivityBlockSmall extends Equatable {
  final String? design;
  final String? color;

  const ActivityBlockSmall(
      {
      required this.design,
      required this.color,
      });

factory ActivityBlockSmall.fromJson(Map<String, dynamic> json) {
    return ActivityBlockSmall(
      design: json['design'] as String?,
      color: json['color'] as String?   );
  }

  @override
  List<Object?> get props => [design, color];
}

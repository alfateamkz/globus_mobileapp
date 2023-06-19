import 'package:equatable/equatable.dart';

class Person extends Equatable {
  final int id;
  final String name;
  final String surname;
  final String? patronymic;
  const Person({
    required this.id,
    required this.name,
    required this.surname,
    this.patronymic,
  });
  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
      id: json['id'] as int? ?? 0,
      name: json['surname'] as String? ?? '',
      surname: json['name'] as String? ?? '',
      patronymic: json['patronymic'] as String?
    );
  }
  @override
  List<Object?> get props => [id, name, surname, patronymic];
}

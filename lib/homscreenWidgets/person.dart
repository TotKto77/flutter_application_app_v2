import './location.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'person.freezed.dart';
part 'person.g.dart';

@freezed
class Person with _$Person {
  const factory Person({
    DateTime? created,
    List<String>? episode,
    String? gender,
    int? id,
    String? image,
    Location? location,
    String? name,
    Location? origin,
    String? species,
    String? status,
    String? type,
    String? url,
  }) = _Person;

  factory Person.fromJson(Map<String, Object?> json) => _$PersonFromJson(json);
}

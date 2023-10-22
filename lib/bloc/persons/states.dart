import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import '../../homscreenWidgets/person.dart';
part 'states.freezed.dart';

@freezed
class StateBlocPersons with _$StateBlocPersons {
  const factory StateBlocPersons.initial() = StatePersonsInitial;
  const factory StateBlocPersons.loding() = StateBlocPersonsLoading;
  const factory StateBlocPersons.data({required List<Person> data}) =
      StatePersonsData;
  const factory StateBlocPersons.error(String error) = StatePersonsError;
}

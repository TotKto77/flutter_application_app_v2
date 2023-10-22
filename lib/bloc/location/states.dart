import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../homscreenWidgets/location.dart';
part 'states.freezed.dart';

@freezed
class StateBlocLocations with _$StateBlocLocations {
  const factory StateBlocLocations.initial() = StateLocationsInitial;
  const factory StateBlocLocations.loding() = StateBlocLocationsLoading;
  const factory StateBlocLocations.data({required List<Location> data}) =
      StateLocationsData;
  const factory StateBlocLocations.error(String error) = StateLocationsError;
}

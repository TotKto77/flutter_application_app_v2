import 'package:flutter/foundation.dart';
import 'package:flutter_application_app_v2/homscreenWidgets/episodes.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'states.freezed.dart';

@freezed
class StateBlocEpisodes with _$StateBlocEpisodes {
  const factory StateBlocEpisodes.data({
    required List<Episode> data,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = StateEpisodesData;

  const factory StateBlocEpisodes.error(String error) = StateEpisodesError;
  const factory StateBlocEpisodes.initial() = StateBlocEpisodesInitial;
  const factory StateBlocEpisodes.loading() = StateBlocEpisodesLoading;
}

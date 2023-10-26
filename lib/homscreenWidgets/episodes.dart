import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'episodes.freezed.dart';
part 'episodes.g.dart';

@freezed
class Episode with _$Episode {
  const factory Episode({
    String? name,
    String? episode,
    String? air_date,
    List<String>? characters,
    List<String>? url,
    String? created,
  }) = _Episode;
  factory Episode.fromJson(Map<String, Object?> json) =>
      _$EpisodeFromJson(json);
}

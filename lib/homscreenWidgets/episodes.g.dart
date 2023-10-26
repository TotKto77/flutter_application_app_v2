// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episodes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EpisodeImpl _$$EpisodeImplFromJson(Map<String, dynamic> json) =>
    _$EpisodeImpl(
      name: json['name'] as String?,
      episode: json['episode'] as String?,
      air_date: json['air_date'] as String?,
      characters: (json['characters'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      url: (json['url'] as List<dynamic>?)?.map((e) => e as String).toList(),
      created: json['created'] as String?,
    );

Map<String, dynamic> _$$EpisodeImplToJson(_$EpisodeImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'episode': instance.episode,
      'air_date': instance.air_date,
      'characters': instance.characters,
      'url': instance.url,
      'created': instance.created,
    };

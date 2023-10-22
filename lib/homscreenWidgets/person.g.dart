// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PersonImpl _$$PersonImplFromJson(Map<String, dynamic> json) => _$PersonImpl(
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      episode:
          (json['episode'] as List<dynamic>?)?.map((e) => e as String).toList(),
      gender: json['gender'] as String?,
      id: json['id'] as int?,
      image: json['image'] as String?,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      name: json['name'] as String?,
      origin: json['origin'] == null
          ? null
          : Location.fromJson(json['origin'] as Map<String, dynamic>),
      species: json['species'] as String?,
      status: json['status'] as String?,
      type: json['type'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$PersonImplToJson(_$PersonImpl instance) =>
    <String, dynamic>{
      'created': instance.created?.toIso8601String(),
      'episode': instance.episode,
      'gender': instance.gender,
      'id': instance.id,
      'image': instance.image,
      'location': instance.location,
      'name': instance.name,
      'origin': instance.origin,
      'species': instance.species,
      'status': instance.status,
      'type': instance.type,
      'url': instance.url,
    };

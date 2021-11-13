// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'giveaway.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Giveaway _$$_GiveawayFromJson(Map<String, dynamic> json) => _$_Giveaway(
      id: json['id'] as int,
      title: json['title'] as String?,
      worth: json['worth'] as String?,
      thumbnail: json['thumbnail'] as String?,
      image: json['image'] as String?,
      description: json['description'] as String?,
      instructions: json['instructions'] as String?,
      openGiveawayUrl: json['open_giveaway_url'] as String,
      publishedDate: json['published_date'] == null
          ? null
          : DateTime.parse(json['published_date'] as String),
      type: json['type'] as String?,
      platforms: json['platforms'] as String?,
      endDate: json['end_date'] as String?,
      users: json['users'] as int?,
      status: json['status'] as String?,
      gamerpowerUrl: json['gamerpower_url'] as String?,
      openGiveaway: json['open_giveaway'] as String?,
    );

Map<String, dynamic> _$$_GiveawayToJson(_$_Giveaway instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'worth': instance.worth,
      'thumbnail': instance.thumbnail,
      'image': instance.image,
      'description': instance.description,
      'instructions': instance.instructions,
      'open_giveaway_url': instance.openGiveawayUrl,
      'published_date': instance.publishedDate?.toIso8601String(),
      'type': instance.type,
      'platforms': instance.platforms,
      'end_date': instance.endDate,
      'users': instance.users,
      'status': instance.status,
      'gamerpower_url': instance.gamerpowerUrl,
      'open_giveaway': instance.openGiveaway,
    };

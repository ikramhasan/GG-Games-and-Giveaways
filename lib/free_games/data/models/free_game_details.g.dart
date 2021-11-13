// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'free_game_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FreeGameDetails _$$_FreeGameDetailsFromJson(Map<String, dynamic> json) =>
    _$_FreeGameDetails(
      id: json['id'] as int,
      title: json['title'] as String? ?? 'N/A',
      thumbnail: json['thumbnail'] as String? ??
          'https://via.placeholder.com/500x225?text=No+Image+Found',
      status: json['status'] as String? ?? 'N/A',
      shortDescription: json['short_description'] as String? ?? 'N/A',
      description: json['description'] as String? ?? 'N/A',
      gameUrl: json['game_url'] as String? ?? 'N/A',
      genre: json['genre'] as String? ?? 'N/A',
      platform: json['platform'] as String? ?? 'N/A',
      publisher: json['publisher'] as String? ?? 'N/A',
      developer: json['developer'] as String? ?? 'N/A',
      releaseDate: json['release_date'] == null
          ? null
          : DateTime.parse(json['release_date'] as String),
      freetogameProfileUrl: json['freetogame_profile_url'] as String? ?? 'N/A',
      minimumSystemRequirements: MinimumSystemRequirements.fromJson(
          json['minimum_system_requirements'] as Map<String, dynamic>),
      screenshots: (json['screenshots'] as List<dynamic>?)
              ?.map((e) => Screenshot.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$$_FreeGameDetailsToJson(_$_FreeGameDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'thumbnail': instance.thumbnail,
      'status': instance.status,
      'short_description': instance.shortDescription,
      'description': instance.description,
      'game_url': instance.gameUrl,
      'genre': instance.genre,
      'platform': instance.platform,
      'publisher': instance.publisher,
      'developer': instance.developer,
      'release_date': instance.releaseDate?.toIso8601String(),
      'freetogame_profile_url': instance.freetogameProfileUrl,
      'minimum_system_requirements': instance.minimumSystemRequirements,
      'screenshots': instance.screenshots,
    };

_$_MinimumSystemRequirements _$$_MinimumSystemRequirementsFromJson(
        Map<String, dynamic> json) =>
    _$_MinimumSystemRequirements(
      os: json['os'] as String? ?? 'N/A',
      processor: json['processor'] as String? ?? 'N/A',
      memory: json['memory'] as String? ?? 'N/A',
      graphics: json['graphics'] as String? ?? 'N/A',
      storage: json['storage'] as String? ?? 'N/A',
    );

Map<String, dynamic> _$$_MinimumSystemRequirementsToJson(
        _$_MinimumSystemRequirements instance) =>
    <String, dynamic>{
      'os': instance.os,
      'processor': instance.processor,
      'memory': instance.memory,
      'graphics': instance.graphics,
      'storage': instance.storage,
    };

_$_Screenshot _$$_ScreenshotFromJson(Map<String, dynamic> json) =>
    _$_Screenshot(
      id: json['id'] as int?,
      image: json['image'] as String? ??
          'https://via.placeholder.com/500x225?text=No+Image+Found',
    );

Map<String, dynamic> _$$_ScreenshotToJson(_$_Screenshot instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
    };

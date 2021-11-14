// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'free_game.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FreeGame _$$_FreeGameFromJson(Map<String, dynamic> json) => _$_FreeGame(
      id: json['id'] as int,
      title: json['title'] as String? ?? 'N/A',
      thumbnail: json['thumbnail'] as String? ?? 'N/A',
      shortDescription: json['short_description'] as String? ?? 'N/A',
      gameUrl: json['game_url'] as String? ?? 'N/A',
      genre: json['genre'] as String? ?? 'N/A',
      platform: json['platform'] as String? ?? 'N/A',
      publisher: json['publisher'] as String? ?? 'N/A',
      developer: json['developer'] as String? ?? 'N/A',
      releaseDate: json['release_date'] as String? ?? 'N/A',
      freetogameProfileUrl: json['freetogame_profile_url'] as String? ?? 'N/A',
    );

Map<String, dynamic> _$$_FreeGameToJson(_$_FreeGame instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'thumbnail': instance.thumbnail,
      'short_description': instance.shortDescription,
      'game_url': instance.gameUrl,
      'genre': instance.genre,
      'platform': instance.platform,
      'publisher': instance.publisher,
      'developer': instance.developer,
      'release_date': instance.releaseDate,
      'freetogame_profile_url': instance.freetogameProfileUrl,
    };

import 'package:freezed_annotation/freezed_annotation.dart';

part 'free_game.freezed.dart';
part 'free_game.g.dart';

@freezed
class FreeGame with _$FreeGame {
  const factory FreeGame({
  required int id,
  @JsonKey(defaultValue: 'N/A') String? title,
  @JsonKey(defaultValue: 'N/A') String? thumbnail,
  @JsonKey(name: 'short_description', defaultValue: 'N/A') String? shortDescription,
  @JsonKey(name: 'game_url', defaultValue: 'N/A') String? gameUrl,
  @JsonKey(defaultValue: 'N/A') String? genre,
  @JsonKey(defaultValue: 'N/A') String? platform,
  @JsonKey(defaultValue: 'N/A') String? publisher,
  @JsonKey(defaultValue: 'N/A') String? developer,
  @JsonKey(name: 'release_date', defaultValue: 'N/A') String? releaseDate,
  @JsonKey(name: 'freetogame_profile_url', defaultValue: 'N/A') String? freetogameProfileUrl,
  }) = _FreeGame;

  factory FreeGame.fromJson(Map<String, dynamic> json) => _$FreeGameFromJson(json);
}

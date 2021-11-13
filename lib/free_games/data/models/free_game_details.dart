import 'package:freezed_annotation/freezed_annotation.dart';

part 'free_game_details.freezed.dart';
part 'free_game_details.g.dart';

@freezed
class FreeGameDetails with _$FreeGameDetails {
  factory FreeGameDetails({
    required int id,
    @JsonKey(defaultValue: 'N/A')
        String? title,
    @JsonKey(defaultValue: 'https://via.placeholder.com/500x225?text=No+Image+Found')
        String? thumbnail,
    @JsonKey(defaultValue: 'N/A')
        String? status,
    @JsonKey(name: 'short_description', defaultValue: 'N/A')
        String? shortDescription,
    @JsonKey(defaultValue: 'N/A')
        String? description,
    @JsonKey(name: 'game_url', defaultValue: 'N/A')
        String? gameUrl,
    @JsonKey(defaultValue: 'N/A')
        String? genre,
    @JsonKey(defaultValue: 'N/A')
        String? platform,
    @JsonKey(defaultValue: 'N/A')
        String? publisher,
    @JsonKey(defaultValue: 'N/A')
        String? developer,
    @JsonKey(
      name: 'release_date',
    )
        DateTime? releaseDate,
    @JsonKey(name: 'freetogame_profile_url', defaultValue: 'N/A')
        String? freetogameProfileUrl,
    @JsonKey(name: 'minimum_system_requirements')
        required MinimumSystemRequirements minimumSystemRequirements,
    @JsonKey(defaultValue: <Screenshot>[])
        List<Screenshot>? screenshots,
  }) = _FreeGameDetails;

  factory FreeGameDetails.fromJson(Map<String, dynamic> json) =>
      _$FreeGameDetailsFromJson(json);
}

@freezed
class MinimumSystemRequirements with _$MinimumSystemRequirements {
  const factory MinimumSystemRequirements({
    @JsonKey(defaultValue: 'N/A') String? os,
    @JsonKey(defaultValue: 'N/A') String? processor,
    @JsonKey(defaultValue: 'N/A') String? memory,
    @JsonKey(defaultValue: 'N/A') String? graphics,
    @JsonKey(defaultValue: 'N/A') String? storage,
  }) = _MinimumSystemRequirements;

  factory MinimumSystemRequirements.empty() => const _MinimumSystemRequirements(
        os: 'N/A',
        graphics: 'N/A',
        memory: 'N/A',
        processor: 'N/A',
        storage: 'N/A',
      );

  factory MinimumSystemRequirements.fromJson(Map<String, dynamic> json) =>
      _$MinimumSystemRequirementsFromJson(json);
}

@freezed
class Screenshot with _$Screenshot {
  const factory Screenshot({
    int? id,
    @JsonKey(defaultValue: 'https://via.placeholder.com/500x225?text=No+Image+Found')
        String? image,
  }) = _Screenshot;

  factory Screenshot.empty() => const _Screenshot(
        id: 0,
        image: 'https://via.placeholder.com/500x225?text=No+Image+Found',
      );

  factory Screenshot.fromJson(Map<String, dynamic> json) =>
      _$ScreenshotFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'giveaway.freezed.dart';
part 'giveaway.g.dart';

@freezed
class Giveaway with _$Giveaway {
  const factory Giveaway({
    required int id,
    String? title,
    String? worth,
    String? thumbnail,
    String? image,
    String? description,
    String? instructions,
    @JsonKey(name: 'open_giveaway_url') required String openGiveawayUrl,
    @JsonKey(name: 'published_date') DateTime? publishedDate,
    String? type,
    String? platforms,
    @JsonKey(name: 'end_date') String? endDate,
    int? users,
    String? status,
    @JsonKey(name: 'gamerpower_url') String? gamerpowerUrl,
    @JsonKey(name: 'open_giveaway') String? openGiveaway,
  }) = _Giveaway;

  factory Giveaway.fromJson(Map<String, dynamic> json) =>
      _$GiveawayFromJson(json);
}

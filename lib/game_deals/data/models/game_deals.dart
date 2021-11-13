// To parse this JSON data, do
//
//     final gameDeal = gameDealFromJson(jsonString);

import 'dart:convert';

List<GameDeal> gameDealFromJson(String str) =>
    List<GameDeal>.from((json.decode(str) as List)
        .map((x) => GameDeal.fromJson(x as Map<String, dynamic>),),);

String gameDealToJson(List<GameDeal> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GameDeal {
  GameDeal({
    required this.internalName,
    required this.title,
    this.metacriticLink,
    required this.dealId,
    required this.storeId,
    required this.gameId,
    required this.salePrice,
    required this.normalPrice,
    required this.isOnSale,
    required this.savings,
    required this.metacriticScore,
    this.steamRatingText,
    required this.steamRatingPercent,
    required this.steamRatingCount,
    this.steamAppId,
    required this.releaseDate,
    required this.lastChange,
    required this.dealRating,
    required this.thumb,
  });

  String internalName;
  String title;
  String? metacriticLink;
  String dealId;
  String storeId;
  String gameId;
  String salePrice;
  String normalPrice;
  String isOnSale;
  String savings;
  String metacriticScore;
  SteamRatingText? steamRatingText;
  String steamRatingPercent;
  String steamRatingCount;
  String? steamAppId;
  int releaseDate;
  int lastChange;
  String dealRating;
  String thumb;

  factory GameDeal.fromJson(Map<String, dynamic> json) => GameDeal(
        internalName: json["internalName"] as String,
        title: json["title"] as String,
        metacriticLink: json["metacriticLink"] == null
            ? null
            : json["metacriticLink"] as String,
        dealId: json["dealID"] as String,
        storeId: json["storeID"] as String,
        gameId: json["gameID"] as String,
        salePrice: json["salePrice"] as String,
        normalPrice: json["normalPrice"] as String,
        isOnSale: json["isOnSale"] as String,
        savings: json["savings"] as String,
        metacriticScore: json["metacriticScore"] as String,
        steamRatingText: json["steamRatingText"] == null
            ? null
            : steamRatingTextValues.map[json["steamRatingText"] as String],
        steamRatingPercent: json["steamRatingPercent"] as String,
        steamRatingCount: json["steamRatingCount"] as String,
        steamAppId:
            json["steamAppID"] == null ? null : json["steamAppID"] as String?,
        releaseDate: json["releaseDate"] as int,
        lastChange: json["lastChange"] as int,
        dealRating: json["dealRating"] as String,
        thumb: json["thumb"] as String,
      );

  Map<String, dynamic> toJson() => {
        "internalName": internalName,
        "title": title,
        "metacriticLink": metacriticLink,
        "dealID": dealId,
        "storeID": storeId,
        "gameID": gameId,
        "salePrice": salePrice,
        "normalPrice": normalPrice,
        "isOnSale": isOnSale,
        "savings": savings,
        "metacriticScore": metacriticScore,
        "steamRatingText": steamRatingText == null
            ? null
            : steamRatingTextValues.reverse[steamRatingText],
        "steamRatingPercent": steamRatingPercent,
        "steamRatingCount": steamRatingCount,
        "steamAppID": steamAppId,
        "releaseDate": releaseDate,
        "lastChange": lastChange,
        "dealRating": dealRating,
        "thumb": thumb,
      };

  @override
  bool operator ==(o) =>
      o is GameDeal &&
      title == o.title &&
      dealId == o.dealId &&
      gameId == o.gameId &&
      internalName == o.internalName &&
      dealRating == o.dealRating &&
      salePrice == o.salePrice &&
      steamRatingPercent == o.steamRatingPercent &&
      savings == o.savings &&
      isOnSale == o.isOnSale &&
      thumb == o.thumb &&
      lastChange == o.lastChange &&
      releaseDate == o.releaseDate &&
      steamAppId == o.steamAppId &&
      steamRatingCount == o.steamRatingCount &&
      steamRatingText == o.steamRatingText &&
      metacriticScore == o.metacriticScore &&
      normalPrice == o.normalPrice &&
      metacriticLink == o.metacriticLink;

  @override
  String toString() {
    return 'GameDeal(title: $title, gameID: $gameId, storeId: $storeId, dealId: $dealId)';
  }
}

// ignore_for_file: constant_identifier_names
enum SteamRatingText {
  MIXED,
  MOSTLY_POSITIVE,
  VERY_POSITIVE,
  OVERWHELMINGLY_POSITIVE,
  POSITIVE
}

final steamRatingTextValues = EnumValues({
  "Mixed": SteamRatingText.MIXED,
  "Mostly Positive": SteamRatingText.MOSTLY_POSITIVE,
  "Overwhelmingly Positive": SteamRatingText.OVERWHELMINGLY_POSITIVE,
  "Positive": SteamRatingText.POSITIVE,
  "Very Positive": SteamRatingText.VERY_POSITIVE
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    return reverseMap ??= map.map((k, v) => MapEntry(v, k));
  }
}

// To parse this JSON data, do
//
//     final giveaway = giveawayFromJson(jsonString);

import 'dart:convert';

List<Giveaway> giveawayFromJson(String str) =>
    List<Giveaway>.from((json.decode(str) as List)
        .map((x) => Giveaway.fromJson(x as Map<String, dynamic>)));

String giveawayToJson(List<Giveaway> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Giveaway {
  Giveaway({
    required this.id,
    required this.title,
    required this.worth,
    required this.thumbnail,
    required this.image,
    required this.description,
    required this.instructions,
    required this.openGiveawayUrl,
    required this.publishedDate,
    required this.type,
    required this.platforms,
    required this.endDate,
    required this.users,
    required this.status,
    required this.gamerpowerUrl,
    required this.openGiveaway,
  });

  int id;
  String title;
  String worth;
  String thumbnail;
  String image;
  String description;
  String instructions;
  String openGiveawayUrl;
  DateTime publishedDate;
  String type;
  String platforms;
  String endDate;
  int users;
  String status;
  String gamerpowerUrl;
  String openGiveaway;

  factory Giveaway.fromJson(Map<String, dynamic> json) => Giveaway(
        id: json["id"] as int,
        title: json["title"] as String,
        worth: json["worth"] as String,
        thumbnail: json["thumbnail"] as String,
        image: json["image"] as String,
        description: json["description"] as String,
        instructions: json["instructions"] as String,
        openGiveawayUrl: json["open_giveaway_url"] as String,
        publishedDate: DateTime.parse(json["published_date"] as String),
        type: json["type"] as String,
        platforms: json["platforms"] as String,
        endDate: json["end_date"] as String,
        users: json["users"] as int,
        status: json["status"] as String,
        gamerpowerUrl: json["gamerpower_url"] as String,
        openGiveaway: json["open_giveaway"] as String,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "worth": worth,
        "thumbnail": thumbnail,
        "image": image,
        "description": description,
        "instructions": instructions,
        "open_giveaway_url": openGiveawayUrl,
        "published_date": publishedDate.toIso8601String(),
        "type": type,
        "platforms": platforms,
        "end_date": endDate,
        "users": users,
        "status": status,
        "gamerpower_url": gamerpowerUrl,
        "open_giveaway": openGiveaway,
      };
}

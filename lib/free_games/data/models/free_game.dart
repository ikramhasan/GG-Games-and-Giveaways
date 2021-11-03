// ignore_for_file: type_annotate_public_apis, hash_and_equals

class FreeGame {
  FreeGame({
    required this.id,
    required this.title,
    required this.thumbnail,
    required this.shortDescription,
    required this.gameUrl,
    required this.genre,
    required this.platform,
    required this.publisher,
    required this.developer,
    required this.releaseDate,
    required this.freetogameProfileUrl,
  });

  int id;
  String title;
  String thumbnail;
  String shortDescription;
  String gameUrl;
  Genre? genre;
  Platform? platform;
  String publisher;
  String developer;
  String releaseDate;
  String freetogameProfileUrl;

  factory FreeGame.fromJson(Map<String, dynamic> json) => FreeGame(
        id: json["id"] as int,
        title: json["title"] as String,
        thumbnail: json["thumbnail"] as String,
        shortDescription: json["short_description"] as String,
        gameUrl: json["game_url"] as String,
        genre: genreValues.map[json["genre"]],
        platform: platformValues.map[json["platform"]],
        publisher: json["publisher"] as String,
        developer: json["developer"] as String,
        releaseDate: json["release_date"] as String,
        freetogameProfileUrl: json["freetogame_profile_url"] as String,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "thumbnail": thumbnail,
        "short_description": shortDescription,
        "game_url": gameUrl,
        "genre": genreValues.reverse[genre],
        "platform": platformValues.reverse[platform],
        "publisher": publisher,
        "developer": developer,
        "release_date": releaseDate,
        "freetogame_profile_url": freetogameProfileUrl,
      };

  @override
  bool operator ==(o) =>
      o is FreeGame &&
      title == o.title &&
      id == o.id &&
      thumbnail == o.thumbnail &&
      shortDescription == o.shortDescription &&
      freetogameProfileUrl == o.freetogameProfileUrl &&
      genre == o.genre &&
      gameUrl == o.gameUrl &&
      publisher == o.publisher;

  @override
  String toString() {
    return 'FreeGame(id: $id, title: $title, genre: $genre, publisher: $publisher)';
  }
}

// ignore_for_file: constant_identifier_names
enum Genre {
  MMORPG,
  SHOOTER,
  MMO,
  SOCIAL,
  CARD_GAME,
  MOBA,
  FIGHTING,
  STRATEGY,
  RACING,
  SPORTS,
  FANTASY,
  GENRE_MMORPG,
  BATTLE_ROYALE,
  ACTION_RPG,
  CARD,
  ARPG
}

final genreValues = EnumValues({
  "Action RPG": Genre.ACTION_RPG,
  "ARPG": Genre.ARPG,
  "Battle Royale": Genre.BATTLE_ROYALE,
  "Card": Genre.CARD,
  "Card Game": Genre.CARD_GAME,
  "Fantasy": Genre.FANTASY,
  "Fighting": Genre.FIGHTING,
  " MMORPG": Genre.GENRE_MMORPG,
  "MMO": Genre.MMO,
  "MMORPG": Genre.MMORPG,
  "MOBA": Genre.MOBA,
  "Racing": Genre.RACING,
  "Shooter": Genre.SHOOTER,
  "Social": Genre.SOCIAL,
  "Sports": Genre.SPORTS,
  "Strategy": Genre.STRATEGY
});

enum Platform { PC_WINDOWS, PC_WINDOWS_WEB_BROWSER, WEB_BROWSER }

final platformValues = EnumValues({
  "PC (Windows)": Platform.PC_WINDOWS,
  "PC (Windows), Web Browser": Platform.PC_WINDOWS_WEB_BROWSER,
  "Web Browser": Platform.WEB_BROWSER
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap ??= map.map((k, v) => MapEntry(v, k));
    return reverseMap!;
  }
}

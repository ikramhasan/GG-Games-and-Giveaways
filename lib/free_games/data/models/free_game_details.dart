import 'dart:convert';

FreeGameDetails gameEntityFromJson(String str) =>
    FreeGameDetails.fromJson(json.decode(str));

String gameEntityToJson(FreeGameDetails data) => json.encode(data.toJson());

class FreeGameDetails {
  FreeGameDetails({
    required this.id,
    required this.title,
    required this.thumbnail,
    required this.status,
    required this.shortDescription,
    required this.description,
    required this.gameUrl,
    required this.genre,
    required this.platform,
    required this.publisher,
    required this.developer,
    required this.releaseDate,
    required this.freetogameProfileUrl,
    required this.minimumSystemRequirements,
    required this.screenshots,
  });

  int id;
  String title;
  String thumbnail;
  String status;
  String shortDescription;
  String description;
  String gameUrl;
  String genre;
  String platform;
  String publisher;
  String developer;
  DateTime releaseDate;
  String freetogameProfileUrl;
  MinimumSystemRequirements minimumSystemRequirements;
  List<Screenshot> screenshots;

  factory FreeGameDetails.fromJson(Map<String, dynamic> json) =>
      FreeGameDetails(
        id: json["id"],
        title: json["title"],
        thumbnail: json["thumbnail"],
        status: json["status"],
        shortDescription: json["short_description"],
        description: json["description"],
        gameUrl: json["game_url"],
        genre: json["genre"],
        platform: json["platform"],
        publisher: json["publisher"],
        developer: json["developer"],
        releaseDate: DateTime.parse(json["release_date"]),
        freetogameProfileUrl: json["freetogame_profile_url"],
        minimumSystemRequirements: MinimumSystemRequirements.fromJson(
            json["minimum_system_requirements"]),
        screenshots: List<Screenshot>.from(
            json["screenshots"].map((x) => Screenshot.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "thumbnail": thumbnail,
        "status": status,
        "short_description": shortDescription,
        "description": description,
        "game_url": gameUrl,
        "genre": genre,
        "platform": platform,
        "publisher": publisher,
        "developer": developer,
        "release_date":
            "${releaseDate.year.toString().padLeft(4, '0')}-${releaseDate.month.toString().padLeft(2, '0')}-${releaseDate.day.toString().padLeft(2, '0')}",
        "freetogame_profile_url": freetogameProfileUrl,
        "minimum_system_requirements": minimumSystemRequirements.toJson(),
        "screenshots": List<dynamic>.from(screenshots.map((x) => x.toJson())),
      };

  bool operator ==(o) =>
      o is FreeGameDetails &&
      title == o.title &&
      id == o.id &&
      thumbnail == o.thumbnail &&
      shortDescription == o.shortDescription &&
      description == o.description &&
      genre == o.genre &&
      gameUrl == o.gameUrl &&
      minimumSystemRequirements == o.minimumSystemRequirements;

  @override
  String toString() {
    return 'FreeGameDetails(id: $id, title: $title, genre: $genre, minimul_requirements: $minimumSystemRequirements)';
  }
}

class MinimumSystemRequirements {
  MinimumSystemRequirements({
    this.os,
    this.processor,
    this.memory,
    this.graphics,
    this.storage,
  });

  String? os;
  String? processor;
  String? memory;
  String? graphics;
  String? storage;

  factory MinimumSystemRequirements.fromJson(Map<String, dynamic> json) =>
      MinimumSystemRequirements(
        os: json["os"],
        processor: json["processor"],
        memory: json["memory"],
        graphics: json["graphics"],
        storage: json["storage"],
      );

  Map<String, dynamic> toJson() => {
        "os": os,
        "processor": processor,
        "memory": memory,
        "graphics": graphics,
        "storage": storage,
      };

  bool operator ==(o) =>
      o is MinimumSystemRequirements &&
      os == o.os &&
      processor == o.processor &&
      memory == o.memory &&
      graphics == o.graphics &&
      storage == o.storage;
}

class Screenshot {
  Screenshot({
    required this.id,
    required this.image,
  });

  int id;
  String image;

  factory Screenshot.fromJson(Map<String, dynamic> json) => Screenshot(
        id: json["id"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,
      };

  bool operator ==(o) => o is Screenshot && id == o.id && image == o.image;
}

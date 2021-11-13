import 'dart:convert';

FreeGameDetails gameEntityFromJson(String str) =>
    FreeGameDetails.fromJson(json.decode(str) as Map<String, dynamic>);

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
        id: json["id"] as int,
        title: json["title"] as String,
        thumbnail: json["thumbnail"] as String,
        status: json["status"] as String,
        shortDescription: json["short_description"] as String,
        description: json["description"] as String,
        gameUrl: json["game_url"] as String,
        genre: json["genre"] as String,
        platform: json["platform"] as String,
        publisher: json["publisher"] as String,
        developer: json["developer"] as String,
        releaseDate: DateTime.parse(json["release_date"] as String),
        freetogameProfileUrl: json["freetogame_profile_url"] as String,
        minimumSystemRequirements: MinimumSystemRequirements.fromJson(
            json["minimum_system_requirements"] as Map<String, dynamic>,),
        screenshots: List<Screenshot>.from((json["screenshots"] as List)
            .map((x) => Screenshot.fromJson(x as Map<String, dynamic>),),),
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

  @override
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
        os: json["os"] as String?,
        processor: json["processor"] as String?,
        memory: json["memory"] as String?,
        graphics: json["graphics"] as String?,
        storage: json["storage"] as String?,
      );

  Map<String, dynamic> toJson() => {
        "os": os,
        "processor": processor,
        "memory": memory,
        "graphics": graphics,
        "storage": storage,
      };

  @override
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
        id: json["id"] as int,
        image: json["image"] as String,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,
      };

  @override
  bool operator ==(Object o) => o is Screenshot && id == o.id && image == o.image;
}

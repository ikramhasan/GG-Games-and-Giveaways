// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'free_game_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FreeGameDetails _$FreeGameDetailsFromJson(Map<String, dynamic> json) {
  return _FreeGameDetails.fromJson(json);
}

/// @nodoc
class _$FreeGameDetailsTearOff {
  const _$FreeGameDetailsTearOff();

  _FreeGameDetails call(
      {required int id,
      @JsonKey(defaultValue: 'N/A')
          String? title,
      @JsonKey(
          defaultValue:
              'https://via.placeholder.com/500x225?text=No+Image+Found')
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
      @JsonKey(name: 'release_date')
          DateTime? releaseDate,
      @JsonKey(name: 'freetogame_profile_url', defaultValue: 'N/A')
          String? freetogameProfileUrl,
      @JsonKey(name: 'minimum_system_requirements')
          required MinimumSystemRequirements minimumSystemRequirements,
      @JsonKey(defaultValue: <Screenshot>[])
          List<Screenshot>? screenshots}) {
    return _FreeGameDetails(
      id: id,
      title: title,
      thumbnail: thumbnail,
      status: status,
      shortDescription: shortDescription,
      description: description,
      gameUrl: gameUrl,
      genre: genre,
      platform: platform,
      publisher: publisher,
      developer: developer,
      releaseDate: releaseDate,
      freetogameProfileUrl: freetogameProfileUrl,
      minimumSystemRequirements: minimumSystemRequirements,
      screenshots: screenshots,
    );
  }

  FreeGameDetails fromJson(Map<String, Object?> json) {
    return FreeGameDetails.fromJson(json);
  }
}

/// @nodoc
const $FreeGameDetails = _$FreeGameDetailsTearOff();

/// @nodoc
mixin _$FreeGameDetails {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 'N/A')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(
      defaultValue: 'https://via.placeholder.com/500x225?text=No+Image+Found')
  String? get thumbnail => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 'N/A')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'short_description', defaultValue: 'N/A')
  String? get shortDescription => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 'N/A')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'game_url', defaultValue: 'N/A')
  String? get gameUrl => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 'N/A')
  String? get genre => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 'N/A')
  String? get platform => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 'N/A')
  String? get publisher => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 'N/A')
  String? get developer => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  DateTime? get releaseDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'freetogame_profile_url', defaultValue: 'N/A')
  String? get freetogameProfileUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'minimum_system_requirements')
  MinimumSystemRequirements get minimumSystemRequirements =>
      throw _privateConstructorUsedError;
  @JsonKey(defaultValue: <Screenshot>[])
  List<Screenshot>? get screenshots => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FreeGameDetailsCopyWith<FreeGameDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FreeGameDetailsCopyWith<$Res> {
  factory $FreeGameDetailsCopyWith(
          FreeGameDetails value, $Res Function(FreeGameDetails) then) =
      _$FreeGameDetailsCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @JsonKey(defaultValue: 'N/A')
          String? title,
      @JsonKey(
          defaultValue:
              'https://via.placeholder.com/500x225?text=No+Image+Found')
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
      @JsonKey(name: 'release_date')
          DateTime? releaseDate,
      @JsonKey(name: 'freetogame_profile_url', defaultValue: 'N/A')
          String? freetogameProfileUrl,
      @JsonKey(name: 'minimum_system_requirements')
          MinimumSystemRequirements minimumSystemRequirements,
      @JsonKey(defaultValue: <Screenshot>[])
          List<Screenshot>? screenshots});

  $MinimumSystemRequirementsCopyWith<$Res> get minimumSystemRequirements;
}

/// @nodoc
class _$FreeGameDetailsCopyWithImpl<$Res>
    implements $FreeGameDetailsCopyWith<$Res> {
  _$FreeGameDetailsCopyWithImpl(this._value, this._then);

  final FreeGameDetails _value;
  // ignore: unused_field
  final $Res Function(FreeGameDetails) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? thumbnail = freezed,
    Object? status = freezed,
    Object? shortDescription = freezed,
    Object? description = freezed,
    Object? gameUrl = freezed,
    Object? genre = freezed,
    Object? platform = freezed,
    Object? publisher = freezed,
    Object? developer = freezed,
    Object? releaseDate = freezed,
    Object? freetogameProfileUrl = freezed,
    Object? minimumSystemRequirements = freezed,
    Object? screenshots = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      shortDescription: shortDescription == freezed
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      gameUrl: gameUrl == freezed
          ? _value.gameUrl
          : gameUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      genre: genre == freezed
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String?,
      platform: platform == freezed
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String?,
      publisher: publisher == freezed
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String?,
      developer: developer == freezed
          ? _value.developer
          : developer // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      freetogameProfileUrl: freetogameProfileUrl == freezed
          ? _value.freetogameProfileUrl
          : freetogameProfileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      minimumSystemRequirements: minimumSystemRequirements == freezed
          ? _value.minimumSystemRequirements
          : minimumSystemRequirements // ignore: cast_nullable_to_non_nullable
              as MinimumSystemRequirements,
      screenshots: screenshots == freezed
          ? _value.screenshots
          : screenshots // ignore: cast_nullable_to_non_nullable
              as List<Screenshot>?,
    ));
  }

  @override
  $MinimumSystemRequirementsCopyWith<$Res> get minimumSystemRequirements {
    return $MinimumSystemRequirementsCopyWith<$Res>(
        _value.minimumSystemRequirements, (value) {
      return _then(_value.copyWith(minimumSystemRequirements: value));
    });
  }
}

/// @nodoc
abstract class _$FreeGameDetailsCopyWith<$Res>
    implements $FreeGameDetailsCopyWith<$Res> {
  factory _$FreeGameDetailsCopyWith(
          _FreeGameDetails value, $Res Function(_FreeGameDetails) then) =
      __$FreeGameDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @JsonKey(defaultValue: 'N/A')
          String? title,
      @JsonKey(
          defaultValue:
              'https://via.placeholder.com/500x225?text=No+Image+Found')
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
      @JsonKey(name: 'release_date')
          DateTime? releaseDate,
      @JsonKey(name: 'freetogame_profile_url', defaultValue: 'N/A')
          String? freetogameProfileUrl,
      @JsonKey(name: 'minimum_system_requirements')
          MinimumSystemRequirements minimumSystemRequirements,
      @JsonKey(defaultValue: <Screenshot>[])
          List<Screenshot>? screenshots});

  @override
  $MinimumSystemRequirementsCopyWith<$Res> get minimumSystemRequirements;
}

/// @nodoc
class __$FreeGameDetailsCopyWithImpl<$Res>
    extends _$FreeGameDetailsCopyWithImpl<$Res>
    implements _$FreeGameDetailsCopyWith<$Res> {
  __$FreeGameDetailsCopyWithImpl(
      _FreeGameDetails _value, $Res Function(_FreeGameDetails) _then)
      : super(_value, (v) => _then(v as _FreeGameDetails));

  @override
  _FreeGameDetails get _value => super._value as _FreeGameDetails;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? thumbnail = freezed,
    Object? status = freezed,
    Object? shortDescription = freezed,
    Object? description = freezed,
    Object? gameUrl = freezed,
    Object? genre = freezed,
    Object? platform = freezed,
    Object? publisher = freezed,
    Object? developer = freezed,
    Object? releaseDate = freezed,
    Object? freetogameProfileUrl = freezed,
    Object? minimumSystemRequirements = freezed,
    Object? screenshots = freezed,
  }) {
    return _then(_FreeGameDetails(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      shortDescription: shortDescription == freezed
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      gameUrl: gameUrl == freezed
          ? _value.gameUrl
          : gameUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      genre: genre == freezed
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String?,
      platform: platform == freezed
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String?,
      publisher: publisher == freezed
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String?,
      developer: developer == freezed
          ? _value.developer
          : developer // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      freetogameProfileUrl: freetogameProfileUrl == freezed
          ? _value.freetogameProfileUrl
          : freetogameProfileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      minimumSystemRequirements: minimumSystemRequirements == freezed
          ? _value.minimumSystemRequirements
          : minimumSystemRequirements // ignore: cast_nullable_to_non_nullable
              as MinimumSystemRequirements,
      screenshots: screenshots == freezed
          ? _value.screenshots
          : screenshots // ignore: cast_nullable_to_non_nullable
              as List<Screenshot>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FreeGameDetails implements _FreeGameDetails {
  _$_FreeGameDetails(
      {required this.id,
      @JsonKey(defaultValue: 'N/A')
          this.title,
      @JsonKey(
          defaultValue:
              'https://via.placeholder.com/500x225?text=No+Image+Found')
          this.thumbnail,
      @JsonKey(defaultValue: 'N/A')
          this.status,
      @JsonKey(name: 'short_description', defaultValue: 'N/A')
          this.shortDescription,
      @JsonKey(defaultValue: 'N/A')
          this.description,
      @JsonKey(name: 'game_url', defaultValue: 'N/A')
          this.gameUrl,
      @JsonKey(defaultValue: 'N/A')
          this.genre,
      @JsonKey(defaultValue: 'N/A')
          this.platform,
      @JsonKey(defaultValue: 'N/A')
          this.publisher,
      @JsonKey(defaultValue: 'N/A')
          this.developer,
      @JsonKey(name: 'release_date')
          this.releaseDate,
      @JsonKey(name: 'freetogame_profile_url', defaultValue: 'N/A')
          this.freetogameProfileUrl,
      @JsonKey(name: 'minimum_system_requirements')
          required this.minimumSystemRequirements,
      @JsonKey(defaultValue: <Screenshot>[])
          this.screenshots});

  factory _$_FreeGameDetails.fromJson(Map<String, dynamic> json) =>
      _$$_FreeGameDetailsFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(defaultValue: 'N/A')
  final String? title;
  @override
  @JsonKey(
      defaultValue: 'https://via.placeholder.com/500x225?text=No+Image+Found')
  final String? thumbnail;
  @override
  @JsonKey(defaultValue: 'N/A')
  final String? status;
  @override
  @JsonKey(name: 'short_description', defaultValue: 'N/A')
  final String? shortDescription;
  @override
  @JsonKey(defaultValue: 'N/A')
  final String? description;
  @override
  @JsonKey(name: 'game_url', defaultValue: 'N/A')
  final String? gameUrl;
  @override
  @JsonKey(defaultValue: 'N/A')
  final String? genre;
  @override
  @JsonKey(defaultValue: 'N/A')
  final String? platform;
  @override
  @JsonKey(defaultValue: 'N/A')
  final String? publisher;
  @override
  @JsonKey(defaultValue: 'N/A')
  final String? developer;
  @override
  @JsonKey(name: 'release_date')
  final DateTime? releaseDate;
  @override
  @JsonKey(name: 'freetogame_profile_url', defaultValue: 'N/A')
  final String? freetogameProfileUrl;
  @override
  @JsonKey(name: 'minimum_system_requirements')
  final MinimumSystemRequirements minimumSystemRequirements;
  @override
  @JsonKey(defaultValue: <Screenshot>[])
  final List<Screenshot>? screenshots;

  @override
  String toString() {
    return 'FreeGameDetails(id: $id, title: $title, thumbnail: $thumbnail, status: $status, shortDescription: $shortDescription, description: $description, gameUrl: $gameUrl, genre: $genre, platform: $platform, publisher: $publisher, developer: $developer, releaseDate: $releaseDate, freetogameProfileUrl: $freetogameProfileUrl, minimumSystemRequirements: $minimumSystemRequirements, screenshots: $screenshots)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FreeGameDetails &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.shortDescription, shortDescription) ||
                other.shortDescription == shortDescription) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.gameUrl, gameUrl) || other.gameUrl == gameUrl) &&
            (identical(other.genre, genre) || other.genre == genre) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.publisher, publisher) ||
                other.publisher == publisher) &&
            (identical(other.developer, developer) ||
                other.developer == developer) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.freetogameProfileUrl, freetogameProfileUrl) ||
                other.freetogameProfileUrl == freetogameProfileUrl) &&
            (identical(other.minimumSystemRequirements,
                    minimumSystemRequirements) ||
                other.minimumSystemRequirements == minimumSystemRequirements) &&
            const DeepCollectionEquality()
                .equals(other.screenshots, screenshots));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      thumbnail,
      status,
      shortDescription,
      description,
      gameUrl,
      genre,
      platform,
      publisher,
      developer,
      releaseDate,
      freetogameProfileUrl,
      minimumSystemRequirements,
      const DeepCollectionEquality().hash(screenshots));

  @JsonKey(ignore: true)
  @override
  _$FreeGameDetailsCopyWith<_FreeGameDetails> get copyWith =>
      __$FreeGameDetailsCopyWithImpl<_FreeGameDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FreeGameDetailsToJson(this);
  }
}

abstract class _FreeGameDetails implements FreeGameDetails {
  factory _FreeGameDetails(
      {required int id,
      @JsonKey(defaultValue: 'N/A')
          String? title,
      @JsonKey(
          defaultValue:
              'https://via.placeholder.com/500x225?text=No+Image+Found')
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
      @JsonKey(name: 'release_date')
          DateTime? releaseDate,
      @JsonKey(name: 'freetogame_profile_url', defaultValue: 'N/A')
          String? freetogameProfileUrl,
      @JsonKey(name: 'minimum_system_requirements')
          required MinimumSystemRequirements minimumSystemRequirements,
      @JsonKey(defaultValue: <Screenshot>[])
          List<Screenshot>? screenshots}) = _$_FreeGameDetails;

  factory _FreeGameDetails.fromJson(Map<String, dynamic> json) =
      _$_FreeGameDetails.fromJson;

  @override
  int get id;
  @override
  @JsonKey(defaultValue: 'N/A')
  String? get title;
  @override
  @JsonKey(
      defaultValue: 'https://via.placeholder.com/500x225?text=No+Image+Found')
  String? get thumbnail;
  @override
  @JsonKey(defaultValue: 'N/A')
  String? get status;
  @override
  @JsonKey(name: 'short_description', defaultValue: 'N/A')
  String? get shortDescription;
  @override
  @JsonKey(defaultValue: 'N/A')
  String? get description;
  @override
  @JsonKey(name: 'game_url', defaultValue: 'N/A')
  String? get gameUrl;
  @override
  @JsonKey(defaultValue: 'N/A')
  String? get genre;
  @override
  @JsonKey(defaultValue: 'N/A')
  String? get platform;
  @override
  @JsonKey(defaultValue: 'N/A')
  String? get publisher;
  @override
  @JsonKey(defaultValue: 'N/A')
  String? get developer;
  @override
  @JsonKey(name: 'release_date')
  DateTime? get releaseDate;
  @override
  @JsonKey(name: 'freetogame_profile_url', defaultValue: 'N/A')
  String? get freetogameProfileUrl;
  @override
  @JsonKey(name: 'minimum_system_requirements')
  MinimumSystemRequirements get minimumSystemRequirements;
  @override
  @JsonKey(defaultValue: <Screenshot>[])
  List<Screenshot>? get screenshots;
  @override
  @JsonKey(ignore: true)
  _$FreeGameDetailsCopyWith<_FreeGameDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

MinimumSystemRequirements _$MinimumSystemRequirementsFromJson(
    Map<String, dynamic> json) {
  return _MinimumSystemRequirements.fromJson(json);
}

/// @nodoc
class _$MinimumSystemRequirementsTearOff {
  const _$MinimumSystemRequirementsTearOff();

  _MinimumSystemRequirements call(
      {@JsonKey(defaultValue: 'N/A') String? os,
      @JsonKey(defaultValue: 'N/A') String? processor,
      @JsonKey(defaultValue: 'N/A') String? memory,
      @JsonKey(defaultValue: 'N/A') String? graphics,
      @JsonKey(defaultValue: 'N/A') String? storage}) {
    return _MinimumSystemRequirements(
      os: os,
      processor: processor,
      memory: memory,
      graphics: graphics,
      storage: storage,
    );
  }

  MinimumSystemRequirements fromJson(Map<String, Object?> json) {
    return MinimumSystemRequirements.fromJson(json);
  }
}

/// @nodoc
const $MinimumSystemRequirements = _$MinimumSystemRequirementsTearOff();

/// @nodoc
mixin _$MinimumSystemRequirements {
  @JsonKey(defaultValue: 'N/A')
  String? get os => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 'N/A')
  String? get processor => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 'N/A')
  String? get memory => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 'N/A')
  String? get graphics => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 'N/A')
  String? get storage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MinimumSystemRequirementsCopyWith<MinimumSystemRequirements> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MinimumSystemRequirementsCopyWith<$Res> {
  factory $MinimumSystemRequirementsCopyWith(MinimumSystemRequirements value,
          $Res Function(MinimumSystemRequirements) then) =
      _$MinimumSystemRequirementsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(defaultValue: 'N/A') String? os,
      @JsonKey(defaultValue: 'N/A') String? processor,
      @JsonKey(defaultValue: 'N/A') String? memory,
      @JsonKey(defaultValue: 'N/A') String? graphics,
      @JsonKey(defaultValue: 'N/A') String? storage});
}

/// @nodoc
class _$MinimumSystemRequirementsCopyWithImpl<$Res>
    implements $MinimumSystemRequirementsCopyWith<$Res> {
  _$MinimumSystemRequirementsCopyWithImpl(this._value, this._then);

  final MinimumSystemRequirements _value;
  // ignore: unused_field
  final $Res Function(MinimumSystemRequirements) _then;

  @override
  $Res call({
    Object? os = freezed,
    Object? processor = freezed,
    Object? memory = freezed,
    Object? graphics = freezed,
    Object? storage = freezed,
  }) {
    return _then(_value.copyWith(
      os: os == freezed
          ? _value.os
          : os // ignore: cast_nullable_to_non_nullable
              as String?,
      processor: processor == freezed
          ? _value.processor
          : processor // ignore: cast_nullable_to_non_nullable
              as String?,
      memory: memory == freezed
          ? _value.memory
          : memory // ignore: cast_nullable_to_non_nullable
              as String?,
      graphics: graphics == freezed
          ? _value.graphics
          : graphics // ignore: cast_nullable_to_non_nullable
              as String?,
      storage: storage == freezed
          ? _value.storage
          : storage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$MinimumSystemRequirementsCopyWith<$Res>
    implements $MinimumSystemRequirementsCopyWith<$Res> {
  factory _$MinimumSystemRequirementsCopyWith(_MinimumSystemRequirements value,
          $Res Function(_MinimumSystemRequirements) then) =
      __$MinimumSystemRequirementsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(defaultValue: 'N/A') String? os,
      @JsonKey(defaultValue: 'N/A') String? processor,
      @JsonKey(defaultValue: 'N/A') String? memory,
      @JsonKey(defaultValue: 'N/A') String? graphics,
      @JsonKey(defaultValue: 'N/A') String? storage});
}

/// @nodoc
class __$MinimumSystemRequirementsCopyWithImpl<$Res>
    extends _$MinimumSystemRequirementsCopyWithImpl<$Res>
    implements _$MinimumSystemRequirementsCopyWith<$Res> {
  __$MinimumSystemRequirementsCopyWithImpl(_MinimumSystemRequirements _value,
      $Res Function(_MinimumSystemRequirements) _then)
      : super(_value, (v) => _then(v as _MinimumSystemRequirements));

  @override
  _MinimumSystemRequirements get _value =>
      super._value as _MinimumSystemRequirements;

  @override
  $Res call({
    Object? os = freezed,
    Object? processor = freezed,
    Object? memory = freezed,
    Object? graphics = freezed,
    Object? storage = freezed,
  }) {
    return _then(_MinimumSystemRequirements(
      os: os == freezed
          ? _value.os
          : os // ignore: cast_nullable_to_non_nullable
              as String?,
      processor: processor == freezed
          ? _value.processor
          : processor // ignore: cast_nullable_to_non_nullable
              as String?,
      memory: memory == freezed
          ? _value.memory
          : memory // ignore: cast_nullable_to_non_nullable
              as String?,
      graphics: graphics == freezed
          ? _value.graphics
          : graphics // ignore: cast_nullable_to_non_nullable
              as String?,
      storage: storage == freezed
          ? _value.storage
          : storage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MinimumSystemRequirements implements _MinimumSystemRequirements {
  const _$_MinimumSystemRequirements(
      {@JsonKey(defaultValue: 'N/A') this.os,
      @JsonKey(defaultValue: 'N/A') this.processor,
      @JsonKey(defaultValue: 'N/A') this.memory,
      @JsonKey(defaultValue: 'N/A') this.graphics,
      @JsonKey(defaultValue: 'N/A') this.storage});

  factory _$_MinimumSystemRequirements.fromJson(Map<String, dynamic> json) =>
      _$$_MinimumSystemRequirementsFromJson(json);

  @override
  @JsonKey(defaultValue: 'N/A')
  final String? os;
  @override
  @JsonKey(defaultValue: 'N/A')
  final String? processor;
  @override
  @JsonKey(defaultValue: 'N/A')
  final String? memory;
  @override
  @JsonKey(defaultValue: 'N/A')
  final String? graphics;
  @override
  @JsonKey(defaultValue: 'N/A')
  final String? storage;

  @override
  String toString() {
    return 'MinimumSystemRequirements(os: $os, processor: $processor, memory: $memory, graphics: $graphics, storage: $storage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MinimumSystemRequirements &&
            (identical(other.os, os) || other.os == os) &&
            (identical(other.processor, processor) ||
                other.processor == processor) &&
            (identical(other.memory, memory) || other.memory == memory) &&
            (identical(other.graphics, graphics) ||
                other.graphics == graphics) &&
            (identical(other.storage, storage) || other.storage == storage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, os, processor, memory, graphics, storage);

  @JsonKey(ignore: true)
  @override
  _$MinimumSystemRequirementsCopyWith<_MinimumSystemRequirements>
      get copyWith =>
          __$MinimumSystemRequirementsCopyWithImpl<_MinimumSystemRequirements>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MinimumSystemRequirementsToJson(this);
  }
}

abstract class _MinimumSystemRequirements implements MinimumSystemRequirements {
  const factory _MinimumSystemRequirements(
          {@JsonKey(defaultValue: 'N/A') String? os,
          @JsonKey(defaultValue: 'N/A') String? processor,
          @JsonKey(defaultValue: 'N/A') String? memory,
          @JsonKey(defaultValue: 'N/A') String? graphics,
          @JsonKey(defaultValue: 'N/A') String? storage}) =
      _$_MinimumSystemRequirements;

  factory _MinimumSystemRequirements.fromJson(Map<String, dynamic> json) =
      _$_MinimumSystemRequirements.fromJson;

  @override
  @JsonKey(defaultValue: 'N/A')
  String? get os;
  @override
  @JsonKey(defaultValue: 'N/A')
  String? get processor;
  @override
  @JsonKey(defaultValue: 'N/A')
  String? get memory;
  @override
  @JsonKey(defaultValue: 'N/A')
  String? get graphics;
  @override
  @JsonKey(defaultValue: 'N/A')
  String? get storage;
  @override
  @JsonKey(ignore: true)
  _$MinimumSystemRequirementsCopyWith<_MinimumSystemRequirements>
      get copyWith => throw _privateConstructorUsedError;
}

Screenshot _$ScreenshotFromJson(Map<String, dynamic> json) {
  return _Screenshot.fromJson(json);
}

/// @nodoc
class _$ScreenshotTearOff {
  const _$ScreenshotTearOff();

  _Screenshot call(
      {int? id,
      @JsonKey(
          defaultValue:
              'https://via.placeholder.com/500x225?text=No+Image+Found')
          String? image}) {
    return _Screenshot(
      id: id,
      image: image,
    );
  }

  Screenshot fromJson(Map<String, Object?> json) {
    return Screenshot.fromJson(json);
  }
}

/// @nodoc
const $Screenshot = _$ScreenshotTearOff();

/// @nodoc
mixin _$Screenshot {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(
      defaultValue: 'https://via.placeholder.com/500x225?text=No+Image+Found')
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScreenshotCopyWith<Screenshot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScreenshotCopyWith<$Res> {
  factory $ScreenshotCopyWith(
          Screenshot value, $Res Function(Screenshot) then) =
      _$ScreenshotCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      @JsonKey(
          defaultValue:
              'https://via.placeholder.com/500x225?text=No+Image+Found')
          String? image});
}

/// @nodoc
class _$ScreenshotCopyWithImpl<$Res> implements $ScreenshotCopyWith<$Res> {
  _$ScreenshotCopyWithImpl(this._value, this._then);

  final Screenshot _value;
  // ignore: unused_field
  final $Res Function(Screenshot) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ScreenshotCopyWith<$Res> implements $ScreenshotCopyWith<$Res> {
  factory _$ScreenshotCopyWith(
          _Screenshot value, $Res Function(_Screenshot) then) =
      __$ScreenshotCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      @JsonKey(
          defaultValue:
              'https://via.placeholder.com/500x225?text=No+Image+Found')
          String? image});
}

/// @nodoc
class __$ScreenshotCopyWithImpl<$Res> extends _$ScreenshotCopyWithImpl<$Res>
    implements _$ScreenshotCopyWith<$Res> {
  __$ScreenshotCopyWithImpl(
      _Screenshot _value, $Res Function(_Screenshot) _then)
      : super(_value, (v) => _then(v as _Screenshot));

  @override
  _Screenshot get _value => super._value as _Screenshot;

  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
  }) {
    return _then(_Screenshot(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Screenshot implements _Screenshot {
  const _$_Screenshot(
      {this.id,
      @JsonKey(
          defaultValue:
              'https://via.placeholder.com/500x225?text=No+Image+Found')
          this.image});

  factory _$_Screenshot.fromJson(Map<String, dynamic> json) =>
      _$$_ScreenshotFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(
      defaultValue: 'https://via.placeholder.com/500x225?text=No+Image+Found')
  final String? image;

  @override
  String toString() {
    return 'Screenshot(id: $id, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Screenshot &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, image);

  @JsonKey(ignore: true)
  @override
  _$ScreenshotCopyWith<_Screenshot> get copyWith =>
      __$ScreenshotCopyWithImpl<_Screenshot>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScreenshotToJson(this);
  }
}

abstract class _Screenshot implements Screenshot {
  const factory _Screenshot(
      {int? id,
      @JsonKey(
          defaultValue:
              'https://via.placeholder.com/500x225?text=No+Image+Found')
          String? image}) = _$_Screenshot;

  factory _Screenshot.fromJson(Map<String, dynamic> json) =
      _$_Screenshot.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(
      defaultValue: 'https://via.placeholder.com/500x225?text=No+Image+Found')
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$ScreenshotCopyWith<_Screenshot> get copyWith =>
      throw _privateConstructorUsedError;
}

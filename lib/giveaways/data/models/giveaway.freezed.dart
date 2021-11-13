// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'giveaway.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Giveaway _$GiveawayFromJson(Map<String, dynamic> json) {
  return _Giveaway.fromJson(json);
}

/// @nodoc
class _$GiveawayTearOff {
  const _$GiveawayTearOff();

  _Giveaway call(
      {required int id,
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
      @JsonKey(name: 'open_giveaway') String? openGiveaway}) {
    return _Giveaway(
      id: id,
      title: title,
      worth: worth,
      thumbnail: thumbnail,
      image: image,
      description: description,
      instructions: instructions,
      openGiveawayUrl: openGiveawayUrl,
      publishedDate: publishedDate,
      type: type,
      platforms: platforms,
      endDate: endDate,
      users: users,
      status: status,
      gamerpowerUrl: gamerpowerUrl,
      openGiveaway: openGiveaway,
    );
  }

  Giveaway fromJson(Map<String, Object?> json) {
    return Giveaway.fromJson(json);
  }
}

/// @nodoc
const $Giveaway = _$GiveawayTearOff();

/// @nodoc
mixin _$Giveaway {
  int get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get worth => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get instructions => throw _privateConstructorUsedError;
  @JsonKey(name: 'open_giveaway_url')
  String get openGiveawayUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'published_date')
  DateTime? get publishedDate => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get platforms => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  String? get endDate => throw _privateConstructorUsedError;
  int? get users => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'gamerpower_url')
  String? get gamerpowerUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'open_giveaway')
  String? get openGiveaway => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GiveawayCopyWith<Giveaway> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiveawayCopyWith<$Res> {
  factory $GiveawayCopyWith(Giveaway value, $Res Function(Giveaway) then) =
      _$GiveawayCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String? title,
      String? worth,
      String? thumbnail,
      String? image,
      String? description,
      String? instructions,
      @JsonKey(name: 'open_giveaway_url') String openGiveawayUrl,
      @JsonKey(name: 'published_date') DateTime? publishedDate,
      String? type,
      String? platforms,
      @JsonKey(name: 'end_date') String? endDate,
      int? users,
      String? status,
      @JsonKey(name: 'gamerpower_url') String? gamerpowerUrl,
      @JsonKey(name: 'open_giveaway') String? openGiveaway});
}

/// @nodoc
class _$GiveawayCopyWithImpl<$Res> implements $GiveawayCopyWith<$Res> {
  _$GiveawayCopyWithImpl(this._value, this._then);

  final Giveaway _value;
  // ignore: unused_field
  final $Res Function(Giveaway) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? worth = freezed,
    Object? thumbnail = freezed,
    Object? image = freezed,
    Object? description = freezed,
    Object? instructions = freezed,
    Object? openGiveawayUrl = freezed,
    Object? publishedDate = freezed,
    Object? type = freezed,
    Object? platforms = freezed,
    Object? endDate = freezed,
    Object? users = freezed,
    Object? status = freezed,
    Object? gamerpowerUrl = freezed,
    Object? openGiveaway = freezed,
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
      worth: worth == freezed
          ? _value.worth
          : worth // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      instructions: instructions == freezed
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String?,
      openGiveawayUrl: openGiveawayUrl == freezed
          ? _value.openGiveawayUrl
          : openGiveawayUrl // ignore: cast_nullable_to_non_nullable
              as String,
      publishedDate: publishedDate == freezed
          ? _value.publishedDate
          : publishedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      platforms: platforms == freezed
          ? _value.platforms
          : platforms // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      gamerpowerUrl: gamerpowerUrl == freezed
          ? _value.gamerpowerUrl
          : gamerpowerUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      openGiveaway: openGiveaway == freezed
          ? _value.openGiveaway
          : openGiveaway // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$GiveawayCopyWith<$Res> implements $GiveawayCopyWith<$Res> {
  factory _$GiveawayCopyWith(_Giveaway value, $Res Function(_Giveaway) then) =
      __$GiveawayCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String? title,
      String? worth,
      String? thumbnail,
      String? image,
      String? description,
      String? instructions,
      @JsonKey(name: 'open_giveaway_url') String openGiveawayUrl,
      @JsonKey(name: 'published_date') DateTime? publishedDate,
      String? type,
      String? platforms,
      @JsonKey(name: 'end_date') String? endDate,
      int? users,
      String? status,
      @JsonKey(name: 'gamerpower_url') String? gamerpowerUrl,
      @JsonKey(name: 'open_giveaway') String? openGiveaway});
}

/// @nodoc
class __$GiveawayCopyWithImpl<$Res> extends _$GiveawayCopyWithImpl<$Res>
    implements _$GiveawayCopyWith<$Res> {
  __$GiveawayCopyWithImpl(_Giveaway _value, $Res Function(_Giveaway) _then)
      : super(_value, (v) => _then(v as _Giveaway));

  @override
  _Giveaway get _value => super._value as _Giveaway;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? worth = freezed,
    Object? thumbnail = freezed,
    Object? image = freezed,
    Object? description = freezed,
    Object? instructions = freezed,
    Object? openGiveawayUrl = freezed,
    Object? publishedDate = freezed,
    Object? type = freezed,
    Object? platforms = freezed,
    Object? endDate = freezed,
    Object? users = freezed,
    Object? status = freezed,
    Object? gamerpowerUrl = freezed,
    Object? openGiveaway = freezed,
  }) {
    return _then(_Giveaway(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      worth: worth == freezed
          ? _value.worth
          : worth // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      instructions: instructions == freezed
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String?,
      openGiveawayUrl: openGiveawayUrl == freezed
          ? _value.openGiveawayUrl
          : openGiveawayUrl // ignore: cast_nullable_to_non_nullable
              as String,
      publishedDate: publishedDate == freezed
          ? _value.publishedDate
          : publishedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      platforms: platforms == freezed
          ? _value.platforms
          : platforms // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      gamerpowerUrl: gamerpowerUrl == freezed
          ? _value.gamerpowerUrl
          : gamerpowerUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      openGiveaway: openGiveaway == freezed
          ? _value.openGiveaway
          : openGiveaway // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Giveaway implements _Giveaway {
  const _$_Giveaway(
      {required this.id,
      this.title,
      this.worth,
      this.thumbnail,
      this.image,
      this.description,
      this.instructions,
      @JsonKey(name: 'open_giveaway_url') required this.openGiveawayUrl,
      @JsonKey(name: 'published_date') this.publishedDate,
      this.type,
      this.platforms,
      @JsonKey(name: 'end_date') this.endDate,
      this.users,
      this.status,
      @JsonKey(name: 'gamerpower_url') this.gamerpowerUrl,
      @JsonKey(name: 'open_giveaway') this.openGiveaway});

  factory _$_Giveaway.fromJson(Map<String, dynamic> json) =>
      _$$_GiveawayFromJson(json);

  @override
  final int id;
  @override
  final String? title;
  @override
  final String? worth;
  @override
  final String? thumbnail;
  @override
  final String? image;
  @override
  final String? description;
  @override
  final String? instructions;
  @override
  @JsonKey(name: 'open_giveaway_url')
  final String openGiveawayUrl;
  @override
  @JsonKey(name: 'published_date')
  final DateTime? publishedDate;
  @override
  final String? type;
  @override
  final String? platforms;
  @override
  @JsonKey(name: 'end_date')
  final String? endDate;
  @override
  final int? users;
  @override
  final String? status;
  @override
  @JsonKey(name: 'gamerpower_url')
  final String? gamerpowerUrl;
  @override
  @JsonKey(name: 'open_giveaway')
  final String? openGiveaway;

  @override
  String toString() {
    return 'Giveaway(id: $id, title: $title, worth: $worth, thumbnail: $thumbnail, image: $image, description: $description, instructions: $instructions, openGiveawayUrl: $openGiveawayUrl, publishedDate: $publishedDate, type: $type, platforms: $platforms, endDate: $endDate, users: $users, status: $status, gamerpowerUrl: $gamerpowerUrl, openGiveaway: $openGiveaway)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Giveaway &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.worth, worth) || other.worth == worth) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.instructions, instructions) ||
                other.instructions == instructions) &&
            (identical(other.openGiveawayUrl, openGiveawayUrl) ||
                other.openGiveawayUrl == openGiveawayUrl) &&
            (identical(other.publishedDate, publishedDate) ||
                other.publishedDate == publishedDate) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.platforms, platforms) ||
                other.platforms == platforms) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.users, users) || other.users == users) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.gamerpowerUrl, gamerpowerUrl) ||
                other.gamerpowerUrl == gamerpowerUrl) &&
            (identical(other.openGiveaway, openGiveaway) ||
                other.openGiveaway == openGiveaway));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      worth,
      thumbnail,
      image,
      description,
      instructions,
      openGiveawayUrl,
      publishedDate,
      type,
      platforms,
      endDate,
      users,
      status,
      gamerpowerUrl,
      openGiveaway);

  @JsonKey(ignore: true)
  @override
  _$GiveawayCopyWith<_Giveaway> get copyWith =>
      __$GiveawayCopyWithImpl<_Giveaway>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GiveawayToJson(this);
  }
}

abstract class _Giveaway implements Giveaway {
  const factory _Giveaway(
      {required int id,
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
      @JsonKey(name: 'open_giveaway') String? openGiveaway}) = _$_Giveaway;

  factory _Giveaway.fromJson(Map<String, dynamic> json) = _$_Giveaway.fromJson;

  @override
  int get id;
  @override
  String? get title;
  @override
  String? get worth;
  @override
  String? get thumbnail;
  @override
  String? get image;
  @override
  String? get description;
  @override
  String? get instructions;
  @override
  @JsonKey(name: 'open_giveaway_url')
  String get openGiveawayUrl;
  @override
  @JsonKey(name: 'published_date')
  DateTime? get publishedDate;
  @override
  String? get type;
  @override
  String? get platforms;
  @override
  @JsonKey(name: 'end_date')
  String? get endDate;
  @override
  int? get users;
  @override
  String? get status;
  @override
  @JsonKey(name: 'gamerpower_url')
  String? get gamerpowerUrl;
  @override
  @JsonKey(name: 'open_giveaway')
  String? get openGiveaway;
  @override
  @JsonKey(ignore: true)
  _$GiveawayCopyWith<_Giveaway> get copyWith =>
      throw _privateConstructorUsedError;
}

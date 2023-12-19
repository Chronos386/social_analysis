// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModelData _$UserModelDataFromJson(Map<String, dynamic> json) {
  return _UserModelData.fromJson(json);
}

/// @nodoc
mixin _$UserModelData {
  int get id => throw _privateConstructorUsedError;
  String get first_name => throw _privateConstructorUsedError;
  String get last_name => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  int get count_comments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelDataCopyWith<UserModelData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelDataCopyWith<$Res> {
  factory $UserModelDataCopyWith(
          UserModelData value, $Res Function(UserModelData) then) =
      _$UserModelDataCopyWithImpl<$Res, UserModelData>;
  @useResult
  $Res call(
      {int id,
      String first_name,
      String last_name,
      String? photo,
      int count_comments});
}

/// @nodoc
class _$UserModelDataCopyWithImpl<$Res, $Val extends UserModelData>
    implements $UserModelDataCopyWith<$Res> {
  _$UserModelDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? first_name = null,
    Object? last_name = null,
    Object? photo = freezed,
    Object? count_comments = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      first_name: null == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String,
      last_name: null == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      count_comments: null == count_comments
          ? _value.count_comments
          : count_comments // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserModelDataCopyWith<$Res>
    implements $UserModelDataCopyWith<$Res> {
  factory _$$_UserModelDataCopyWith(
          _$_UserModelData value, $Res Function(_$_UserModelData) then) =
      __$$_UserModelDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String first_name,
      String last_name,
      String? photo,
      int count_comments});
}

/// @nodoc
class __$$_UserModelDataCopyWithImpl<$Res>
    extends _$UserModelDataCopyWithImpl<$Res, _$_UserModelData>
    implements _$$_UserModelDataCopyWith<$Res> {
  __$$_UserModelDataCopyWithImpl(
      _$_UserModelData _value, $Res Function(_$_UserModelData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? first_name = null,
    Object? last_name = null,
    Object? photo = freezed,
    Object? count_comments = null,
  }) {
    return _then(_$_UserModelData(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      first_name: null == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String,
      last_name: null == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      count_comments: null == count_comments
          ? _value.count_comments
          : count_comments // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserModelData implements _UserModelData {
  const _$_UserModelData(
      {required this.id,
      required this.first_name,
      required this.last_name,
      required this.photo,
      required this.count_comments});

  factory _$_UserModelData.fromJson(Map<String, dynamic> json) =>
      _$$_UserModelDataFromJson(json);

  @override
  final int id;
  @override
  final String first_name;
  @override
  final String last_name;
  @override
  final String? photo;
  @override
  final int count_comments;

  @override
  String toString() {
    return 'UserModelData(id: $id, first_name: $first_name, last_name: $last_name, photo: $photo, count_comments: $count_comments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserModelData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.first_name, first_name) ||
                other.first_name == first_name) &&
            (identical(other.last_name, last_name) ||
                other.last_name == last_name) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.count_comments, count_comments) ||
                other.count_comments == count_comments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, first_name, last_name, photo, count_comments);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserModelDataCopyWith<_$_UserModelData> get copyWith =>
      __$$_UserModelDataCopyWithImpl<_$_UserModelData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserModelDataToJson(
      this,
    );
  }
}

abstract class _UserModelData implements UserModelData {
  const factory _UserModelData(
      {required final int id,
      required final String first_name,
      required final String last_name,
      required final String? photo,
      required final int count_comments}) = _$_UserModelData;

  factory _UserModelData.fromJson(Map<String, dynamic> json) =
      _$_UserModelData.fromJson;

  @override
  int get id;
  @override
  String get first_name;
  @override
  String get last_name;
  @override
  String? get photo;
  @override
  int get count_comments;
  @override
  @JsonKey(ignore: true)
  _$$_UserModelDataCopyWith<_$_UserModelData> get copyWith =>
      throw _privateConstructorUsedError;
}

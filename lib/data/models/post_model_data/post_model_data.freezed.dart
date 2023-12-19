// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_model_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostModelData _$PostModelDataFromJson(Map<String, dynamic> json) {
  return _PostModelData.fromJson(json);
}

/// @nodoc
mixin _$PostModelData {
  String? get text => throw _privateConstructorUsedError;
  int get post_id => throw _privateConstructorUsedError;
  int get count_views => throw _privateConstructorUsedError;
  int get count_likes => throw _privateConstructorUsedError;
  int get count_reposts => throw _privateConstructorUsedError;
  int get count_comments => throw _privateConstructorUsedError;
  int get count_attachments => throw _privateConstructorUsedError;
  double get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostModelDataCopyWith<PostModelData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostModelDataCopyWith<$Res> {
  factory $PostModelDataCopyWith(
          PostModelData value, $Res Function(PostModelData) then) =
      _$PostModelDataCopyWithImpl<$Res, PostModelData>;
  @useResult
  $Res call(
      {String? text,
      int post_id,
      int count_views,
      int count_likes,
      int count_reposts,
      int count_comments,
      int count_attachments,
      double date});
}

/// @nodoc
class _$PostModelDataCopyWithImpl<$Res, $Val extends PostModelData>
    implements $PostModelDataCopyWith<$Res> {
  _$PostModelDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? post_id = null,
    Object? count_views = null,
    Object? count_likes = null,
    Object? count_reposts = null,
    Object? count_comments = null,
    Object? count_attachments = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      post_id: null == post_id
          ? _value.post_id
          : post_id // ignore: cast_nullable_to_non_nullable
              as int,
      count_views: null == count_views
          ? _value.count_views
          : count_views // ignore: cast_nullable_to_non_nullable
              as int,
      count_likes: null == count_likes
          ? _value.count_likes
          : count_likes // ignore: cast_nullable_to_non_nullable
              as int,
      count_reposts: null == count_reposts
          ? _value.count_reposts
          : count_reposts // ignore: cast_nullable_to_non_nullable
              as int,
      count_comments: null == count_comments
          ? _value.count_comments
          : count_comments // ignore: cast_nullable_to_non_nullable
              as int,
      count_attachments: null == count_attachments
          ? _value.count_attachments
          : count_attachments // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostModelDataCopyWith<$Res>
    implements $PostModelDataCopyWith<$Res> {
  factory _$$_PostModelDataCopyWith(
          _$_PostModelData value, $Res Function(_$_PostModelData) then) =
      __$$_PostModelDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? text,
      int post_id,
      int count_views,
      int count_likes,
      int count_reposts,
      int count_comments,
      int count_attachments,
      double date});
}

/// @nodoc
class __$$_PostModelDataCopyWithImpl<$Res>
    extends _$PostModelDataCopyWithImpl<$Res, _$_PostModelData>
    implements _$$_PostModelDataCopyWith<$Res> {
  __$$_PostModelDataCopyWithImpl(
      _$_PostModelData _value, $Res Function(_$_PostModelData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? post_id = null,
    Object? count_views = null,
    Object? count_likes = null,
    Object? count_reposts = null,
    Object? count_comments = null,
    Object? count_attachments = null,
    Object? date = null,
  }) {
    return _then(_$_PostModelData(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      post_id: null == post_id
          ? _value.post_id
          : post_id // ignore: cast_nullable_to_non_nullable
              as int,
      count_views: null == count_views
          ? _value.count_views
          : count_views // ignore: cast_nullable_to_non_nullable
              as int,
      count_likes: null == count_likes
          ? _value.count_likes
          : count_likes // ignore: cast_nullable_to_non_nullable
              as int,
      count_reposts: null == count_reposts
          ? _value.count_reposts
          : count_reposts // ignore: cast_nullable_to_non_nullable
              as int,
      count_comments: null == count_comments
          ? _value.count_comments
          : count_comments // ignore: cast_nullable_to_non_nullable
              as int,
      count_attachments: null == count_attachments
          ? _value.count_attachments
          : count_attachments // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostModelData implements _PostModelData {
  const _$_PostModelData(
      {required this.text,
      required this.post_id,
      required this.count_views,
      required this.count_likes,
      required this.count_reposts,
      required this.count_comments,
      required this.count_attachments,
      required this.date});

  factory _$_PostModelData.fromJson(Map<String, dynamic> json) =>
      _$$_PostModelDataFromJson(json);

  @override
  final String? text;
  @override
  final int post_id;
  @override
  final int count_views;
  @override
  final int count_likes;
  @override
  final int count_reposts;
  @override
  final int count_comments;
  @override
  final int count_attachments;
  @override
  final double date;

  @override
  String toString() {
    return 'PostModelData(text: $text, post_id: $post_id, count_views: $count_views, count_likes: $count_likes, count_reposts: $count_reposts, count_comments: $count_comments, count_attachments: $count_attachments, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostModelData &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.post_id, post_id) || other.post_id == post_id) &&
            (identical(other.count_views, count_views) ||
                other.count_views == count_views) &&
            (identical(other.count_likes, count_likes) ||
                other.count_likes == count_likes) &&
            (identical(other.count_reposts, count_reposts) ||
                other.count_reposts == count_reposts) &&
            (identical(other.count_comments, count_comments) ||
                other.count_comments == count_comments) &&
            (identical(other.count_attachments, count_attachments) ||
                other.count_attachments == count_attachments) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, post_id, count_views,
      count_likes, count_reposts, count_comments, count_attachments, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostModelDataCopyWith<_$_PostModelData> get copyWith =>
      __$$_PostModelDataCopyWithImpl<_$_PostModelData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostModelDataToJson(
      this,
    );
  }
}

abstract class _PostModelData implements PostModelData {
  const factory _PostModelData(
      {required final String? text,
      required final int post_id,
      required final int count_views,
      required final int count_likes,
      required final int count_reposts,
      required final int count_comments,
      required final int count_attachments,
      required final double date}) = _$_PostModelData;

  factory _PostModelData.fromJson(Map<String, dynamic> json) =
      _$_PostModelData.fromJson;

  @override
  String? get text;
  @override
  int get post_id;
  @override
  int get count_views;
  @override
  int get count_likes;
  @override
  int get count_reposts;
  @override
  int get count_comments;
  @override
  int get count_attachments;
  @override
  double get date;
  @override
  @JsonKey(ignore: true)
  _$$_PostModelDataCopyWith<_$_PostModelData> get copyWith =>
      throw _privateConstructorUsedError;
}

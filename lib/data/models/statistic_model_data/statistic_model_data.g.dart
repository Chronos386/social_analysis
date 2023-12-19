// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistic_model_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StatisticModelData _$$_StatisticModelDataFromJson(
        Map<String, dynamic> json) =>
    _$_StatisticModelData(
      likes_photo: json['likes_photo'] as String,
      comments_photo: json['comments_photo'] as String,
      reposts_photo: json['reposts_photo'] as String,
      popularity_photo: json['popularity_photo'] as String,
      popularity_by_day_photo: json['popularity_by_day_photo'] as String,
      users: (json['users'] as List<dynamic>)
          .map((e) => UserModelData.fromJson(e as Map<String, dynamic>))
          .toList(),
      top_likes: (json['top_likes'] as List<dynamic>)
          .map((e) => PostModelData.fromJson(e as Map<String, dynamic>))
          .toList(),
      top_comments: (json['top_comments'] as List<dynamic>)
          .map((e) => PostModelData.fromJson(e as Map<String, dynamic>))
          .toList(),
      top_reposts: (json['top_reposts'] as List<dynamic>)
          .map((e) => PostModelData.fromJson(e as Map<String, dynamic>))
          .toList(),
      top_popularity_rating: (json['top_popularity_rating'] as List<dynamic>)
          .map((e) => PostModelData.fromJson(e as Map<String, dynamic>))
          .toList(),
      emotional_photos: (json['emotional_photos'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_StatisticModelDataToJson(
        _$_StatisticModelData instance) =>
    <String, dynamic>{
      'likes_photo': instance.likes_photo,
      'comments_photo': instance.comments_photo,
      'reposts_photo': instance.reposts_photo,
      'popularity_photo': instance.popularity_photo,
      'popularity_by_day_photo': instance.popularity_by_day_photo,
      'users': instance.users,
      'top_likes': instance.top_likes,
      'top_comments': instance.top_comments,
      'top_reposts': instance.top_reposts,
      'top_popularity_rating': instance.top_popularity_rating,
      'emotional_photos': instance.emotional_photos,
    };

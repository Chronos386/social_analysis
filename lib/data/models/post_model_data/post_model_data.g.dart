// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostModelData _$$_PostModelDataFromJson(Map<String, dynamic> json) =>
    _$_PostModelData(
      text: json['text'] as String?,
      post_id: json['post_id'] as int,
      count_views: json['count_views'] as int,
      count_likes: json['count_likes'] as int,
      count_reposts: json['count_reposts'] as int,
      count_comments: json['count_comments'] as int,
      count_attachments: json['count_attachments'] as int,
      date: (json['date'] as num).toDouble(),
    );

Map<String, dynamic> _$$_PostModelDataToJson(_$_PostModelData instance) =>
    <String, dynamic>{
      'text': instance.text,
      'post_id': instance.post_id,
      'count_views': instance.count_views,
      'count_likes': instance.count_likes,
      'count_reposts': instance.count_reposts,
      'count_comments': instance.count_comments,
      'count_attachments': instance.count_attachments,
      'date': instance.date,
    };

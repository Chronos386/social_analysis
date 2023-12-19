// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModelData _$$_UserModelDataFromJson(Map<String, dynamic> json) =>
    _$_UserModelData(
      id: json['id'] as int,
      first_name: json['first_name'] as String,
      last_name: json['last_name'] as String,
      photo: json['photo'] as String?,
      count_comments: json['count_comments'] as int,
    );

Map<String, dynamic> _$$_UserModelDataToJson(_$_UserModelData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'photo': instance.photo,
      'count_comments': instance.count_comments,
    };

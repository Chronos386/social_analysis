// ignore_for_file: non_constant_identifier_names
import '../post_model_data/post_model_data.dart';
import '../user_model_data/user_model_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'statistic_model_data.freezed.dart';
part 'statistic_model_data.g.dart';

@freezed
class StatisticModelData with _$StatisticModelData {
  const factory StatisticModelData({
    required String likes_photo,
    required String comments_photo,
    required String reposts_photo,
    required String popularity_photo,
    required String popularity_by_day_photo,
    required List<UserModelData> users,
    required List<PostModelData> top_likes,
    required List<PostModelData> top_comments,
    required List<PostModelData> top_reposts,
    required List<PostModelData> top_popularity_rating,
    required List<String> emotional_photos,
  }) = _StatisticModelData;

  factory StatisticModelData.fromJson(Map<String, dynamic> json) => _$StatisticModelDataFromJson(json);
}
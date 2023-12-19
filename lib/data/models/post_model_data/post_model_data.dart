// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';
part 'post_model_data.freezed.dart';
part 'post_model_data.g.dart';

@freezed
class PostModelData with _$PostModelData {
  const factory PostModelData({
    required String? text,
    required int post_id,
    required int count_views,
    required int count_likes,
    required int count_reposts,
    required int count_comments,
    required int count_attachments,
    required double date,
  }) = _PostModelData;

  factory PostModelData.fromJson(Map<String, dynamic> json) => _$PostModelDataFromJson(json);
}
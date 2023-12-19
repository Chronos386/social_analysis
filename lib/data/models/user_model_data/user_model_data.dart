// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_model_data.freezed.dart';
part 'user_model_data.g.dart';

@freezed
class UserModelData with _$UserModelData {
  const factory UserModelData({
    required int id,
    required String first_name,
    required String last_name,
    required String? photo,
    required int count_comments,
  }) = _UserModelData;

  factory UserModelData.fromJson(Map<String, dynamic> json) => _$UserModelDataFromJson(json);
}
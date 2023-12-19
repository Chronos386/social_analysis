import 'package:get_it/get_it.dart';
import '../storage/network_storage.dart';
import 'package:social_analysis/utils/result.dart';
import '../../domain/repository/analysis_repository.dart';
import 'package:social_analysis/data/models/statistic_model_data/statistic_model_data.dart';

class AnalysisRepositoryImpl implements AnalysisRepository {
  var networkStore = GetIt.instance<NetworkStorage>();

  @override
  Future<Result<StatisticModelData>> getSocialAnalysis(int groupId,
      int countPosts, String login, String password) {
    return networkStore.getSocialAnalysis(groupId, countPosts, login, password);
  }
}
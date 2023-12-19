import '../../utils/result.dart';
import '../../data/models/statistic_model_data/statistic_model_data.dart';

abstract class AnalysisRepository {
  Future<Result<StatisticModelData>> getSocialAnalysis(int groupId,
      int countPosts, String login, String password);
}
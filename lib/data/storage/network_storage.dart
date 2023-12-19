import '../../utils/result.dart';
import '../models/statistic_model_data/statistic_model_data.dart';

abstract class NetworkStorage {
  //Analysis api
  Future<Result<StatisticModelData>> getSocialAnalysis(int groupId,
      int countPosts, String login, String password);
}
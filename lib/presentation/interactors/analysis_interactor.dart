import '../../utils/result.dart';
import '../models/statistic_model_presentation.dart';

abstract class AnalysisInteractor {
  Future<Result<StatisticModelPresentation>> getSocialAnalysis(int groupId,
      int countPosts, String login, String password);
}
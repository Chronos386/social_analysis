import 'package:get_it/get_it.dart';
import '../../res/generated/locale_keys.g.dart';
import '../repository/analysis_repository.dart';
import 'package:social_analysis/utils/result.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../presentation/interactors/analysis_interactor.dart';
import 'package:social_analysis/domain/models/statistic_model_domain.dart';
import 'package:social_analysis/presentation/models/statistic_model_presentation.dart';
import 'package:social_analysis/data/models/statistic_model_data/statistic_model_data.dart';


class AnalysisInteractorImpl implements AnalysisInteractor {
  var analysisRep = GetIt.instance<AnalysisRepository>();

  @override
  Future<Result<StatisticModelPresentation>> getSocialAnalysis(int groupId,
      int countPosts, String login, String password) async {
    Result<StatisticModelData> res = await analysisRep.getSocialAnalysis(
        groupId, countPosts, login, password);
    if (res is Success<StatisticModelData>) {
      StatisticModelDomain domain = StatisticModelDomain.fromData(res.data);
      return Success(domain.toPress());
    } else if (res is Error<StatisticModelData>) {
      return Error(res.errorCode);
    } else {
      return Error(LocaleKeys.failure.tr());
    }
  }
}
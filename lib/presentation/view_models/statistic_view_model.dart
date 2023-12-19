import '../models/statistic_model_presentation.dart';

class StatisticViewModel {
  StatisticModelPresentation? data;

  void setStatistic(StatisticModelPresentation newData) {
    data = newData;
  }

  void clearViewModel() {
    data = null;
  }
}
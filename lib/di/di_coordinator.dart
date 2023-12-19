import 'package:get_it/get_it.dart';
import '../data/storage/network_storage.dart';
import '../data/storage/network_storage_impl.dart';
import '../domain/repository/analysis_repository.dart';
import '../data/repository/analysis_repository_impl.dart';
import '../presentation/view_models/main_view_model.dart';
import '../domain/interactors/analysis_interactor_impl.dart';
import '../presentation/interactors/analysis_interactor.dart';
import '../presentation/view_models/statistic_view_model.dart';

final get = GetIt.instance;

void setupGetIt() {
  get.registerFactory<NetworkStorage>(() => NetworkStorageImpl());
  get.registerFactory<AnalysisRepository>(() => AnalysisRepositoryImpl());
  get.registerFactory<AnalysisInteractor>(() => AnalysisInteractorImpl());
  get.registerLazySingleton<MainViewModel>(() => MainViewModel());
  get.registerLazySingleton<StatisticViewModel>(() => StatisticViewModel());
}
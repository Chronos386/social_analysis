import '../../utils/result.dart';
import 'package:get_it/get_it.dart';
import '../view_models/main_view_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../res/generated/locale_keys.g.dart';
import '../interactors/analysis_interactor.dart';
import '../view_models/statistic_view_model.dart';
import '../models/statistic_model_presentation.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_bloc.freezed.dart';
part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  var mainViewModel = GetIt.instance<MainViewModel>();
  var viewModel = GetIt.instance<StatisticViewModel>();
  var analysisInteractor = GetIt.instance<AnalysisInteractor>();

  MainBloc() : super(const MainState.loaded()) {
    on<MainEventFetch>((event, emit) async {
      emit(const MainState.loading());
      try {
        Result<StatisticModelPresentation> result = await analysisInteractor
            .getSocialAnalysis(int.parse(mainViewModel.groupIdController.text),
            mainViewModel.countPosts, mainViewModel.loginController.text,
            mainViewModel.passwordController.text);
        if (result is Success<StatisticModelPresentation>) {
          viewModel.setStatistic(result.data);
          emit(const MainState.successLoaded());
        } else if (result is Error<StatisticModelPresentation>) {
          String error = result.errorCode;
          emit(MainState.error(error: error));
        } else {
          emit(MainState.error(error: LocaleKeys.failure.tr()));
        }
      } catch (e) {
        emit(MainState.error(error: e.toString()));
      }
    });

    on<MainEventFetchToLoaded>((event, emit) async {
      emit(const MainState.loaded());
    });
  }
}
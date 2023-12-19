import '../../res/global.dart';
import '../bloc/main_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';
import '../widgets/next_button_widget.dart';
import '../view_models/main_view_model.dart';
import '../../res/generated/locale_keys.g.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:numberpicker/numberpicker.dart';
import '../widgets/main_page/email_text_field.dart';
import 'package:social_analysis/utils/alerts_shower.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:social_analysis/presentation/widgets/loading_button_widget.dart';
import 'package:social_analysis/presentation/widgets/main_page/just_text_field.dart';
import 'package:social_analysis/presentation/widgets/main_page/password_text_field.dart';


class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var viewModel = GetIt.instance<MainViewModel>();

  @override
  Widget build(BuildContext context) {
    final state = context.watch<MainBloc>().state;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: AppBar(
          centerTitle: true,
          title: Text(
            LocaleKeys.title.tr(),
            style: Global.textHeader,
          ),
          backgroundColor: Global.appBarTwo,
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: Global.backgroundGradient,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: EmailTextField(
                          hintText: LocaleKeys.set_login.tr(),
                          controller: viewModel.loginController,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: PasswordTextField(
                          hint: LocaleKeys.set_password.tr(),
                          controller: viewModel.passwordController,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: JustTextField(
                          hintText: LocaleKeys.set_group_id.tr(),
                          controller: viewModel.groupIdController,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Center(
                          child: Text(
                            LocaleKeys.choose_numb_posts.tr(),
                            style: Global.textHeader,
                          ),
                        ),
                      ),
                      NumberPicker(
                        textStyle: Global.textPickerSmaller,
                        selectedTextStyle: Global.textRegular,
                        value: viewModel.countPosts,
                        minValue: 25,
                        maxValue: 500,
                        step: 25,
                        haptics: true,
                        onChanged: (value) {
                          setState(() {
                            viewModel.countPosts = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
              state.when(
                loaded: () {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: NextButtonWidget(
                      text: LocaleKeys.analyse.tr(),
                      nextAct: () {
                        try {
                          int groupId = int.parse(viewModel.groupIdController
                              .text);
                          if (viewModel.loginController.text.isNotEmpty &&
                              viewModel.passwordController.text.isNotEmpty &&
                              viewModel.groupIdController.text.isNotEmpty &&
                              (groupId < 0)) {
                            context.read<MainBloc>().add(const MainEvent
                                .fetch());
                          }
                        } catch (e) {
                          AlertsShower
                              .showCupertinoAlert(context, e.toString());
                          return;
                        }
                      },
                    ),
                  );
                },
                loading: () {
                  return const LoadingButtonWidget();
                },
                error: (String error) {
                  Future.delayed(Duration.zero, () => context.read<MainBloc>()
                      .add(const MainEvent.fetchToLoaded()));
                  Future.delayed(Duration.zero, () => AlertsShower
                      .showCupertinoAlert(context, error));
                  return Container();
                },
                successLoaded: () {
                  Future.delayed(Duration.zero, () => context.read<MainBloc>()
                      .add(const MainEvent.fetchToLoaded()));
                  Future.delayed(Duration.zero, () => Navigator
                      .pushNamed(context, "mainPage/statistic"));
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: NextButtonWidget(
                      text: LocaleKeys.analyse.tr(),
                      nextAct: () {},
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
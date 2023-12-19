import 'di/di_coordinator.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_analysis/res/global.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:social_analysis/res/generated/locale_keys.g.dart';
import 'package:social_analysis/presentation/bloc/main_bloc.dart';
import 'package:social_analysis/presentation/pages/main_page.dart';
import 'package:social_analysis/res/generated/codegen_loader.g.dart';
import 'package:social_analysis/presentation/pages/statistic_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  await EasyLocalization.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(
      EasyLocalization(
        supportedLocales: const [Locale('en'), Locale('ru')],
        path: 'assets/translations',
        fallbackLocale: const Locale('en'),
        assetLoader: const CodegenLoader(),
        child: const MyApp(),
      ),
    );
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Global.pickerUnsColor,
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Global.gradOne,
          selectionColor: Global.gradOne,
          selectionHandleColor: Global.gradOne,
        ),
        textTheme: Global.darkTextTheme,
      ),
      routes: {
        'mainPage': (context) => BlocProvider(
          create: (context) => MainBloc(),
          child: const MainPage(),
        ),
        'mainPage/statistic': (context) => const StatisticPage(),
      },
      initialRoute: 'mainPage',
      home: const MainPage(),
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute<void>(builder: (context) {
          return Scaffold(
            body: Center(
              child: Text(
                LocaleKeys.nav_error.tr(),
              ),
            ),
          );
        });
      },
    );
  }
}
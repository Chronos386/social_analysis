// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> ru = {
  "title": "Анализатор сообществ Вк",
  "ok": "Ок",
  "yes": "Да",
  "cancel": "Отмена",
  "error_label": "Ошибка",
  "analyse": "Анализировать",
  "count_comments": "Количество комментариев: {count}",
  "required_field": "Обязательное поле",
  "nav_error": "Произошла ошибка навигации",
  "set_login": "Введите логин...",
  "set_password": "Введите пароль...",
  "set_group_id": "Введите id группы",
  "choose_numb_posts": "Выберите количество анализируемых постов",
  "posts_statistic": "Статистика по постам",
  "top_commentators": "Топ 5 комментаторов:",
  "top_likes": "Топ 3 постов по лайкам:",
  "top_comments": "Топ 3 постов по комментариям:",
  "top_reposts": "Топ 3 постов по репостам:",
  "top_popularity": "Топ 3 постов по общей популярности:",
  "statistics_emotional": "Статистика эмоциональности комментариев самых популярных постов:",
  "failure": "Ошибка загрузки данных",
  "failure_get_data": "Не удалось получить данные. Пожалуйста, проверьте подключение к интернету",
  "failure_data": "Произошла очистка сервера. Пожалуйста, повторите анализ.",
  "failure_internal": "Произошла ошибка внутри сервера. Пожалуйста, повторите попытку позже."
};
static const Map<String,dynamic> en = {
  "title": "Vk Community Analyzer",
  "ok": "Ok",
  "yes": "Yes",
  "cancel": "Cancel",
  "error_label": "Error",
  "analyse": "Analyse",
  "count_comments": "Count comments: {count}",
  "required_field": "Required field",
  "nav_error": "A navigation error has occurred",
  "set_login": "Enter your username...",
  "set_password": "Enter the password...",
  "set_group_id": "Enter the group ID",
  "choose_numb_posts": "Select the number of analyzed posts",
  "posts_statistic": "Statistics on posts",
  "top_commentators": "Top 5 commentators:",
  "top_likes": "Top 3 posts by likes:",
  "top_comments": "Top 3 posts by comments:",
  "top_reposts": "Top 3 posts by reposts:",
  "top_popularity": "Top 3 posts by overall popularity:",
  "statistics_emotional": "Statistics on the emotionality of comments on the most popular posts:",
  "failure": "Data load error",
  "failure_get_data": "Failed to get data. Please check your Internet connection"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"ru": ru, "en": en};
}

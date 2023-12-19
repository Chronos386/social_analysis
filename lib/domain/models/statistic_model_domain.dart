import 'package:social_analysis/domain/models/post_model_domain.dart';
import 'package:social_analysis/domain/models/user_model_domain.dart';
import 'package:social_analysis/presentation/models/post_model_presentation.dart';
import 'package:social_analysis/presentation/models/user_model_presentation.dart';

import '../../data/models/post_model_data/post_model_data.dart';
import '../../data/models/statistic_model_data/statistic_model_data.dart';
import '../../data/models/user_model_data/user_model_data.dart';
import '../../presentation/models/statistic_model_presentation.dart';

class StatisticModelDomain {
  final String likesPhoto;
  final String commentsPhoto;
  final String repostsPhoto;
  final String popularityPhoto;
  final String popularityByDayPhoto;
  final List<UserModelDomain> users;
  final List<PostModelDomain> topLikes;
  final List<PostModelDomain> topComments;
  final List<PostModelDomain> topReposts;
  final List<PostModelDomain> topPopularityRating;
  final List<String> emotionalPhotos;

  StatisticModelDomain({
    required this.likesPhoto,
    required this.commentsPhoto,
    required this.repostsPhoto,
    required this.popularityPhoto,
    required this.popularityByDayPhoto,
    required this.users,
    required this.topLikes,
    required this.topComments,
    required this.topReposts,
    required this.topPopularityRating,
    required this.emotionalPhotos,
  });

  factory StatisticModelDomain.fromData(StatisticModelData data) {
    List<UserModelDomain> users = [];
    for (UserModelData user in data.users) {
      users.add(UserModelDomain.fromData(user));
    }
    List<PostModelDomain> topLikes = [];
    for (PostModelData item in data.top_likes) {
      topLikes.add(PostModelDomain.fromData(item));
    }
    List<PostModelDomain> topComments = [];
    for (PostModelData item in data.top_comments) {
      topComments.add(PostModelDomain.fromData(item));
    }
    List<PostModelDomain> topReposts = [];
    for (PostModelData item in data.top_reposts) {
      topReposts.add(PostModelDomain.fromData(item));
    }
    List<PostModelDomain> topPopularityRating = [];
    for (PostModelData item in data.top_popularity_rating) {
      topPopularityRating.add(PostModelDomain.fromData(item));
    }
    List<String> emotionalPhotos = [];
    for (String photo in data.emotional_photos) {
      emotionalPhotos.add(photo);
    }
    return StatisticModelDomain(
      likesPhoto: data.likes_photo,
      commentsPhoto: data.comments_photo,
      repostsPhoto: data.reposts_photo,
      popularityPhoto: data.popularity_photo,
      popularityByDayPhoto: data.popularity_by_day_photo,
      users: users,
      topLikes: topLikes,
      topComments: topComments,
      topReposts: topReposts,
      topPopularityRating: topPopularityRating,
      emotionalPhotos: emotionalPhotos,
    );
  }

  StatisticModelPresentation toPress() {
    List<UserModelPresentation> users = [];
    for (UserModelDomain user in this.users) {
      users.add(user.toPress());
    }
    List<PostModelPresentation> topLikes = [];
    for (PostModelDomain item in this.topLikes) {
      topLikes.add(item.toPress());
    }
    List<PostModelPresentation> topComments = [];
    for (PostModelDomain item in this.topComments) {
      topComments.add(item.toPress());
    }
    List<PostModelPresentation> topReposts = [];
    for (PostModelDomain item in this.topReposts) {
      topReposts.add(item.toPress());
    }
    List<PostModelPresentation> topPopularityRating = [];
    for (PostModelDomain item in this.topPopularityRating) {
      topPopularityRating.add(item.toPress());
    }
    List<String> emotionalPhotos = [];
    for (String photo in this.emotionalPhotos) {
      emotionalPhotos.add(photo);
    }
    return StatisticModelPresentation(
      likesPhoto: likesPhoto,
      commentsPhoto: commentsPhoto,
      repostsPhoto: repostsPhoto,
      popularityPhoto: popularityPhoto,
      popularityByDayPhoto: popularityByDayPhoto,
      users: users,
      topLikes: topLikes,
      topComments: topComments,
      topReposts: topReposts,
      topPopularityRating: topPopularityRating,
      emotionalPhotos: emotionalPhotos,
    );
  }
}
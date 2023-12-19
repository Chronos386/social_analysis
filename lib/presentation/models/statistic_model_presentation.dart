import 'package:social_analysis/presentation/models/post_model_presentation.dart';
import 'package:social_analysis/presentation/models/user_model_presentation.dart';

class StatisticModelPresentation {
  final String likesPhoto;
  final String commentsPhoto;
  final String repostsPhoto;
  final String popularityPhoto;
  final String popularityByDayPhoto;
  final List<UserModelPresentation> users;
  final List<PostModelPresentation> topLikes;
  final List<PostModelPresentation> topComments;
  final List<PostModelPresentation> topReposts;
  final List<PostModelPresentation> topPopularityRating;
  final List<String> emotionalPhotos;

  StatisticModelPresentation({
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
}
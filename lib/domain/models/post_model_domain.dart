import '../../data/models/post_model_data/post_model_data.dart';
import '../../presentation/models/post_model_presentation.dart';

class PostModelDomain {
  final String? text;
  final int postId;
  final int countViews;
  final int countLikes;
  final int countReposts;
  final int countComments;
  final int countAttachments;
  final DateTime date;

  PostModelDomain({
    required this.text,
    required this.postId,
    required this.countViews,
    required this.countLikes,
    required this.countReposts,
    required this.countComments,
    required this.countAttachments,
    required this.date,
  });

  factory PostModelDomain.fromData(PostModelData data) {
    return PostModelDomain(
      text: data.text,
      postId: data.post_id,
      countViews: data.count_views,
      countLikes: data.count_likes,
      countReposts: data.count_reposts,
      countComments: data.count_comments,
      countAttachments: data.count_attachments,
      date: DateTime.fromMillisecondsSinceEpoch(data.date.round()),
    );
  }

  PostModelPresentation toPress() {
    return PostModelPresentation(
      text: text,
      postId: postId,
      countViews: countViews,
      countLikes: countLikes,
      countReposts: countReposts,
      countComments: countComments,
      countAttachments: countAttachments,
      date: date,
    );
  }
}
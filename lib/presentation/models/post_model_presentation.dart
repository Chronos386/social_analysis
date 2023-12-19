class PostModelPresentation {
  final String? text;
  final int postId;
  final int countViews;
  final int countLikes;
  final int countReposts;
  final int countComments;
  final int countAttachments;
  final DateTime date;

  PostModelPresentation({
    required this.text,
    required this.postId,
    required this.countViews,
    required this.countLikes,
    required this.countReposts,
    required this.countComments,
    required this.countAttachments,
    required this.date,
  });
}
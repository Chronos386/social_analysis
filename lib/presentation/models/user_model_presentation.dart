class UserModelPresentation {
  final int id;
  final String firstName;
  final String lastName;
  final String? photo;
  final int countComments;

  UserModelPresentation({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.photo,
    required this.countComments,
  });
}
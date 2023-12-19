import '../../data/models/user_model_data/user_model_data.dart';
import '../../presentation/models/user_model_presentation.dart';

class UserModelDomain {
  final int id;
  final String firstName;
  final String lastName;
  final String? photo;
  final int countComments;

  UserModelDomain({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.photo,
    required this.countComments,
  });

  factory UserModelDomain.fromData(UserModelData data) {
    return UserModelDomain(
      id: data.id,
      firstName: data.first_name,
      lastName: data.last_name,
      photo: data.photo,
      countComments: data.count_comments,
    );
  }

  UserModelPresentation toPress() {
    return UserModelPresentation(
      id: id,
      firstName: firstName,
      lastName: lastName,
      photo: photo,
      countComments: countComments,
    );
  }
}
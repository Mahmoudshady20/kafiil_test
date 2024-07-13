class UserModel {
  String firstName;
  String lastName;
  String password;
  String emailAddress;
  String userType;
  String about;
  int salary;
  String typeSelectedRole;
  String birthDate;
  bool faceBook;
  bool twitter;
  bool linked;
  UserModel({
    required this.salary,
    required this.about,
    required this.birthDate,
    required this.emailAddress,
    required this.firstName,
    required this.lastName,
    required this.password,
    required this.userType,
    required this.faceBook,
    required this.twitter,
    required this.linked,
    required this.typeSelectedRole,
  });
}

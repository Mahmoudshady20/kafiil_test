class UserModel {
  String firstName;
  String lastName;
  String password;
  String emailAddress;
  String userType;
  String about;
  int salary;
  String birthDate;
  UserModel({
    required this.salary,
    required this.about,
    required this.birthDate,
    required this.emailAddress,
    required this.firstName,
    required this.lastName,
    required this.password,
    required this.userType,
  });
}

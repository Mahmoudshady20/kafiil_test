import 'package:flutter/material.dart';
import 'package:kafiil_test/feature/authentication_feature/data/user_model.dart';

class UserProvider extends ChangeNotifier{
  UserModel? userModel;
  updateUser(UserModel user){
    userModel = user;
    notifyListeners();
  }
}
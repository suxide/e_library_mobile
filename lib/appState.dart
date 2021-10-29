import 'package:e_library_mobile/models/user_model.dart';
import 'package:flutter/cupertino.dart';

class AppState extends ChangeNotifier {
  UserModel? user;

  setUser(UserModel val) {
    user = val;
    notifyListeners();
  }
}

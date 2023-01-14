// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:momento_pattern/model_classes/user_state.dart';

class User {
  late String _userName;
  late String _password;
  User({
    required String userName,
    required String password,
  }) {
    _userName = userName;
    _password = password;
  }

  User getUser() {
    return User(userName: _userName, password: _password);
  }

  setUser({required User user}) {
    _userName = user.getUserName();
    _password = user.getPassword();
  }

  getUserName() {
    return _userName;
  }

  getPassword() {
    return _password;
  }

  // Related to userStates

  UserState createState() {
    return UserState(user: getUser());
  }

  restoreState(UserState state) {
    User user = state.getUser();
    _userName = user.getUserName();
    _password = user.getPassword();
  }
}

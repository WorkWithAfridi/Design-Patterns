// // ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:momento_pattern/model_classes/user_model.dart';

class UserState {
  late User _user;

  UserState({
    required User user,
  }) {
    _user = user;
  }

  User getUser() {
    return _user;
  }
}

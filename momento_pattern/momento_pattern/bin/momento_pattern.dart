import 'package:momento_pattern/model_classes/user_history.dart';
import 'package:momento_pattern/model_classes/user_model.dart';

void main(List<String> arguments) {
  var editor = User(userName: "", password: "");
  var history = UserHistory();

  editor.setUser(user: User(userName: "a", password: "1"));
  history.pushState(editor.createState());

  editor.setUser(user: User(userName: "b", password: "2"));
  history.pushState(editor.createState());

  editor.setUser(user: User(userName: "c", password: "3"));

  printUserData(editor.getUser());

  editor.restoreState(history.popState());

  printUserData(editor.getUser());

  editor.restoreState(history.popState());

  printUserData(editor.getUser());
}

printUserData(User user) {
  print("User name is: ${user.getUserName()} and password is: ${user.getPassword()}");
}

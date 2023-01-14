// import 'package:momento_pattern/model_classes/editor_state.dart';

import 'package:momento_pattern/model_classes/user_state.dart';

class UserHistory {
  List<UserState> userStates = [];

  pushState(UserState state) {
    userStates.add(state);
  }

  popState() {
    var lastIndex = userStates.length - 1;
    var lastState = userStates[lastIndex];
    userStates.removeAt(lastIndex);
    return lastState;
  }
}

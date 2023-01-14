import 'package:state_pattern/model_classes/abstract_tool.dart';

class SelectionTool implements Tool {
  @override
  selectEvent() {
    print("User selects Selection tool.");
  }

  @override
  useEvent() {
    print("User selects something with Selection tool!");
  }
}

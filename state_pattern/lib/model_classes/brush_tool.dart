import 'package:state_pattern/model_classes/abstract_tool.dart';

class BrushTool extends Tool {
  @override
  selectEvent() {
    print("User selects Brush tool.");
  }

  @override
  useEvent() {
    print("User draws something with Brush tool!");
  }
}

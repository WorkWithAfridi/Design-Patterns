import 'abstract_tool.dart';

class EraserTool extends Tool {
  @override
  selectEvent() {
    print("User selects Eraser tool.");
  }

  @override
  useEvent() {
    print("User erases something with Eraser tool!");
  }
}

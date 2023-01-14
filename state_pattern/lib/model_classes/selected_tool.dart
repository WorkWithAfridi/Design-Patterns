import 'package:state_pattern/model_classes/abstract_tool.dart';

class SelectedTool {
  late Tool _tool;

  selectTool() {
    _tool.selectEvent();
  }

  useTool() {
    _tool.useEvent();
  }

  Tool getTool() {
    return _tool;
  }

  setTool(Tool tool) {
    _tool = tool;
  }
}

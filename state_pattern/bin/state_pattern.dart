import 'package:state_pattern/model_classes/brush_tool.dart';
import 'package:state_pattern/model_classes/eraser_tool.dart';
import 'package:state_pattern/model_classes/selected_tool.dart';
import 'package:state_pattern/model_classes/selection_tool.dart';

void main(List<String> arguments) {
  SelectedTool myTool = SelectedTool();

  myTool.setTool(SelectionTool());
  myTool.selectTool();
  myTool.useTool();

  myTool.setTool(BrushTool());
  myTool.selectTool();
  myTool.useTool();
  myTool.useTool();

  myTool.setTool(EraserTool());
  myTool.selectTool();
  myTool.useTool();
}

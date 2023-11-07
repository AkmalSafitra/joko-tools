part of 'tool_bloc.dart';


@freezed
class ToolEvent with _$ToolEvent {

  const factory ToolEvent.lendTool(String amountStr) = LendTool;
  const factory ToolEvent.addTools() = AddTools;

}

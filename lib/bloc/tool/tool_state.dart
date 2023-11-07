part of 'tool_bloc.dart';


@freezed
abstract class ToolState with _$ToolState {
  const factory ToolState.initial() = Initial;
  const factory ToolState.onBorrowed() = OnBorrowed;
}


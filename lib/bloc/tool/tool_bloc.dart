import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

import '../../models/tool_model.dart';

part 'tool_bloc.freezed.dart';
part 'tool_event.dart';
part 'tool_state.dart';

@injectable
class ToolBloc extends Bloc<ToolEvent, ToolState> {
  ToolBloc() : super(ToolState.initial()) {
    on<ToolEvent>((event, emit) {
      on<AddTools>(_addTools);
    });
  }

  Future<void> _addTools(ToolEvent event, Emitter<ToolState> emit) async {
    print('addTools');
    var box = Hive.box<ToolModel>('tools');

    if (box.isEmpty) {
      var data = [
        {"toolId": 0, "toolName": "wrench", "toolCount": 6},
        {"toolId": 1, "toolName": "Cutter", "toolCount": 12},
        {"toolId": 2, "toolName": "Pliers", "toolCount": 15},
        {"toolId": 3, "toolName": "Screwdriver", "toolCount": 11},
        {"toolId": 4, "toolName": "Welding Machine", "toolCount": 3},
        {"toolId": 5, "toolName": "Welding Glasses", "toolCount": 7},
        {"toolId": 6, "toolName": "Hammer", "toolCount": 3},
        {"toolId": 7, "toolName": "Measuring Tape", "toolCount": 8},
        {"toolId": 8, "toolName": "Alan key set", "toolCount": 4},
        {"toolId": 9, "toolName": "Air compressor", "toolCount": 2}
      ];

      data.forEach((e) {
        var tool = ToolModel.fromJson(e);
        box.put(tool.toolId.toString(), tool);
      });

      // var tooldata = box.get('0');
      // print('DataTools2');
      // print('DataTools23 ${tooldata?.toolName ?? '' }');

      print('DataTools22' + box.toMap().toString());
    }
  }
}

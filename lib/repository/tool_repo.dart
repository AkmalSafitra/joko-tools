import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../core/global.dart';
import '../models/friend_model.dart';
import '../models/lend_model.dart';
import '../models/tool_model.dart';

class ToolRepo {
  late Box<ToolModel> _toolHive;
  late Box<FriendModel> _friendHive;
  late Box<LendModel> _lendHive;
  late List<ToolModel> _toolBox;
  List<ToolModel> _friendToolBox = [];
  late List<FriendModel> _friendBox;
  late List<LendModel> _lendBox;
  late List<String> _friendNameList = [];

  ToolRepo();

  void lendTool(int toolId, String friendName) {
    // int lendId = _lendHive.values.toList().length;
    int lendId = DateTime.now().millisecondsSinceEpoch;
    debugPrint('lt id : ${lendId}');

    int friendId = _friendBox.indexWhere((element) => element.friendName == friendName);
    // debugPrint('lt f id : ${friendId}');

    //check count
    var kepake = countToolLent(toolId);
    var sisa = _toolBox[toolId].toolCount! - kepake;

    if (sisa != 0) {
      LendModel lendData = LendModel(lendId: lendId++, toolId: toolId, friendId: friendId, toolCount: 1);

      _lendHive.put(lendId.toString(), lendData);
    }
  }

  int countToolLent(int toolId) {
    int counter = 0;

    _lendHive.values.where((item) => item.toolId == toolId).forEach((item) => counter++); //
    debugPrint('ctl : $counter');

    return counter;
  }

  void removeLendById(int toolId, int friendId) {
    // debugPrint('removeLendById ni : $toolId : $friendId');

    _lendHive.deleteAt(
        _lendHive.values.toList().indexWhere((element) => element.toolId == toolId && element.friendId == friendId));
  }

  List<ToolModel> getTools() {
    // debugPrint('get tool ni');
    addDefaultValue();

    _toolBox = _toolHive.values.toList();

    return _toolBox;
  }

  List<ToolModel> getFriendTools(int friendId) {
    debugPrint('get friend tool ni');
    _friendToolBox = [];

    _lendHive.values.map((e) => e.toolId).toSet().forEach((e1) {
      int countItem = 0;
      ToolModel? lastItem;
      _lendHive.values.where((e2) => e1 == e2.toolId && friendId == e2.friendId).forEach((element) {
        _toolHive.values.where((toolItem) => toolItem.toolId == element.toolId).forEach((e) {
          lastItem = e;
          countItem++;
        });
      });

      if (countItem != 0) {
        lastItem?.toolCount = countItem;
        _friendToolBox.add(lastItem!);
      }
    });
    return _friendToolBox;
  }

  List<FriendModel> getFriends() {
    // debugPrint('get friend ni');
    _friendBox = [];
    _friendHive = Hive.box<FriendModel>('friends');
    _friendBox = _friendHive.values.toList();
    return _friendBox;
  }

  List<String> getFriendsName() {
    // print('get friend name list ni');

    _friendHive = Hive.box<FriendModel>('friends');
    _friendBox = _friendHive.values.toList();
    _friendBox.forEach((element) {
      _friendNameList.add(element.friendName ?? '');
    });
    return _friendNameList;
  }

  /// Add Default Value to Hive
  void addDefaultValue() {
    _toolHive = Hive.box<ToolModel>('tools');
    _friendHive = Hive.box<FriendModel>('friends');
    _lendHive = Hive.box<LendModel>('lends');

    toolsData.forEach((e) {
      var tool = ToolModel.fromJson(e);
      _toolHive.put(tool.toolId.toString(), tool);
    });

    friendsData.forEach((e) {
      var friend = FriendModel.fromJson(e);
      _friendHive.put(friend.friendId.toString(), friend);
    });

    // print('tool hive: ${_toolHive.values.toList()}');
    // print('friend hive: ${_friendHive.values.toList()}');
  }


List<LendModel> getLend() {
    _lendBox = [];
    return _lendBox;
  }
  
}

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:joko_tools/models/friend_model.dart';
import 'package:joko_tools/models/lend_model.dart';
import 'package:joko_tools/models/tool_model.dart';
import 'package:joko_tools/provider/tool/tool_provider.dart';
import 'package:joko_tools/repository/tool_repo.dart';

class FriendHive extends StateNotifier<List<FriendModel>?> {
  FriendHive(this.ref) : super(null) {
    repo = ref.read(providerHive);
    fetchFriend();
  }
  late ToolRepo? repo;
  final StateNotifierProviderRef ref;

  void fetchFriend() {
    state = repo!.getFriends();
  }
}

class FriendNameHive extends StateNotifier<List<String>?> {
  FriendNameHive(this.ref) : super(null) {
    repo = ref.read(providerHive);
    fetchFriendName();
  }
  late ToolRepo? repo;
  final StateNotifierProviderRef ref;

  void fetchFriendName() {
    state = repo!.getFriendsName();
  }

  void lendTool(int toolId, String friendName) {
    repo!.lendTool(toolId, friendName);
  }

  int countToolLent(int toolId) {
    return repo!.countToolLent(toolId);
  }

  List<ToolModel> fetchFriendTool(int friendId) {
    return repo!.getFriendTools(friendId);
  }

  void removeLendById(int toolId, int friendId) {
    repo!.removeLendById(toolId, friendId);
    // state = repo!.getFriendsName();
  }
}

class ToolHive extends StateNotifier<List<ToolModel>?> {
  ToolHive(this.ref) : super(null) {
    repo = ref.read(providerHive);
    fetchTool();
  }
  late ToolRepo? repo;
  final StateNotifierProviderRef ref;

  void fetchTool() {
    state = repo!.getTools();
  }
}

class LendHive extends StateNotifier<List<LendModel>?> {
  LendHive(this.ref) : super(null) {
    repo = ref.read(providerHive);
    getLend();
  }
  late ToolRepo? repo;
  final StateNotifierProviderRef ref;

  void getLend() {
    state = repo!.getLend();
  }
}

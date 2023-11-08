import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:joko_tools/models/lend_model.dart';
import '../../controller/tool_controller.dart';
import '../../models/friend_model.dart';
import '../../models/tool_model.dart';
import '../../repository/tool_repo.dart';

///tool RepoProvider
final providerHive = Provider<ToolRepo>((ref) => ToolRepo());

///Hive data
final toolHiveData = StateNotifierProvider<ToolHive, List<ToolModel>?>((ref) => ToolHive(ref));
final friendHiveData = StateNotifierProvider<FriendHive, List<FriendModel>?>((ref) => FriendHive(ref));
final friendNameHiveData = StateNotifierProvider<FriendNameHive, List<String>?>((ref) => FriendNameHive(ref));
final lendHiveData = StateNotifierProvider<LendHive, List<LendModel>?>((ref) => LendHive(ref));

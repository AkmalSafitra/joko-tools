import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../models/tool_model.dart';
import '../../provider/tool/tool_provider.dart';

class FriendDetailPage extends StatefulHookConsumerWidget {
  final int friendId;
  const FriendDetailPage(this.friendId, {super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FriendDetailPageState();
}

class _FriendDetailPageState extends ConsumerState<FriendDetailPage> {
  @override
  Widget build(BuildContext context) {
    final friendNameProvider = ref.watch(friendNameHiveData);
    final lendProvider = ref.watch(lendHiveData);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(
            friendNameProvider![widget.friendId],
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: ListView.builder(
            itemCount: ref.read(friendNameHiveData.notifier).fetchFriendTool(widget.friendId).length,
            itemBuilder: (BuildContext context, int index) {
              List<ToolModel> item = ref.read(friendNameHiveData.notifier).fetchFriendTool(widget.friendId);
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: InkWell(
                  onTap: () {
                    showDialog<void>(
                      context: context,
                      barrierDismissible: false, // user must tap button!
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Returning'),
                          content: const SingleChildScrollView(
                            child: ListBody(
                              children: <Widget>[
                                Text('This tool has return?'),
                              ],
                            ),
                          ),
                          actions: <Widget>[
                            ElevatedButton(
                              child: const Text('OK'),
                              onPressed: () {
                                ref
                                    .read(friendNameHiveData.notifier)
                                    .removeLendById(item[index].toolId ?? 0, widget.friendId);
                                ref.refresh(lendHiveData);
                                Navigator.of(context).pop();
                              },
                            ),
                            ElevatedButton(
                              child: const Text('Cancel'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Container(
                    child: Row(
                      children: [
                        Image.asset(
                          item[index].toolImage ?? '',
                          height: 50,
                          width: 50,
                        ),
                        const Gap(40),
                        Text(
                          item[index].toolName ?? '',
                          style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        Text(
                          '${item![index].toolCount.toString() ?? ''} borrowed',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }));
  }
}

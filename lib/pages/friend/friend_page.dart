import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'friend_detail_page.dart';
import '../../provider/tool/tool_provider.dart';

class FriendPage extends StatefulHookConsumerWidget {
  const FriendPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FriendPageState();
}

class _FriendPageState extends ConsumerState<FriendPage> {
  @override
  Widget build(BuildContext context) {
    final friendNameProvider = ref.watch(friendNameHiveData);
    // debugPrint('fpn bs:  ${friendNameProvider?.length.toString()}');

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text(
            'Friend',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: ListView.builder(
            itemCount: friendNameProvider?.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FriendDetailPage(index)),
                    ).then((value) => ref.refresh(toolHiveData));
                  },
                  child: Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          friendNameProvider![index],
                          style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      )),
                ),
              );
            }));
  }
}

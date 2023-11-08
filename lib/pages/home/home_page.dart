import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../widget/bottom_sheet_widget.dart';
import '../../provider/tool/tool_provider.dart';
import 'package:gap/gap.dart';

class HomePage extends StatefulHookConsumerWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {

    final toolProvider = ref.watch(toolHiveData);
    debugPrint('tp:  ${toolProvider?.length.toString()}');

    final friendProvider = ref.watch(friendHiveData);
    debugPrint('fp:  ${friendProvider?.length.toString()}');

    final friendNameProvider = ref.watch(friendNameHiveData);
    debugPrint('fpn bs:  ${friendNameProvider?.length.toString()}');

    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                height: screenHeight - 130,
                child: ListView.builder(
                    itemCount: toolProvider?.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: InkWell(
                          onTap: () {
                            int sisa = (toolProvider[index].toolCount!) -
                                (ref.read(friendNameHiveData.notifier).countToolLent(index));
                            if (sisa > 0) {
                              showModalBottomSheet(
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25))),
                                context: context,
                                builder: (BuildContext context) {
                                  return BottomSheetLend(index);
                                },
                              ).then((value) => ref.refresh(toolHiveData));
                            } else {
                              Flushbar(
                                title: "Opps!",
                                message: "No more ${toolProvider[index].toolName} to be borrowed",
                                duration: Duration(seconds: 3),
                              )..show(context);
                            }
                          },
                          child: Container(
                            child: Row(
                              children: [
                                Image.asset(
                                  toolProvider![index].toolImage ?? '',
                                  height: 50,
                                  width: 50,
                                ),
                                const Gap(40),
                                Text(
                                  toolProvider![index].toolName ?? '',
                                  style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                                const Spacer(),
                                Text(
                                  '${ref.read(friendNameHiveData.notifier).countToolLent(index)}/${toolProvider![index].toolCount.toString() ?? ''} borrowed',
                                  style: TextStyle(color: Colors.black, fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

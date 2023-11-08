import 'package:another_flushbar/flushbar.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../provider/tool/tool_provider.dart';

class BottomSheetLend extends ConsumerWidget {
  final int toolId;
  const BottomSheetLend(this.toolId, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final toolProvider = ref.watch(toolHiveData);
    // debugPrint('tp bs:  ${toolProvider?.length.toString()}');
    final friendProvider = ref.watch(friendHiveData);
    debugPrint('fp bs:  ${friendProvider?.length.toString()}');

    final friendNameProvider = ref.watch(friendNameHiveData);
    debugPrint('fpn bs:  ${friendNameProvider?.length.toString()}');

    String nameSelected = '';

    return Padding(
      padding: const EdgeInsets.only(top: 40.0, left: 20, right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            'Lend Tool to',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          const Gap(20),
          DropdownSearch<String>(
            popupProps: PopupProps.menu(
              showSelectedItems: true,
              disabledItemFn: (String s) => s.startsWith('I'),
            ),
            items: friendNameProvider!,
            dropdownDecoratorProps: const DropDownDecoratorProps(
              dropdownSearchDecoration: InputDecoration(
                labelText: "Friend Name",
                hintText: "Your Friend Name",
              ),
            ),
            onChanged: (data) {
              nameSelected = data ?? '';
              // debugPrint('na sele: $nameSelected');
            },
            selectedItem: "",
          ),
          const Gap(40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: const Text('OK'),
                onPressed: () {
                  if (nameSelected.isNotEmpty) {
                    ref.read(friendNameHiveData.notifier).lendTool(toolId, nameSelected);
                    Navigator.pop(context);
                  } else {
                    Flushbar(
                      title: "Opps!",
                      message: "please choose your friend first",
                      duration: Duration(seconds: 3),
                    )..show(context);
                  }
                },
              ),
              const Gap(40),
              ElevatedButton(
                child: const Text('Cancel'),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

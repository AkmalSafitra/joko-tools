import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'models/friend_model.dart';
import 'models/lend_model.dart';
import 'models/tool_model.dart';
import 'pages/bottom_nav.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  Hive.registerAdapter(ToolModelAdapter());
  Hive.registerAdapter(FriendModelAdapter());
  Hive.registerAdapter(LendModelAdapter());

  await Hive.openBox<ToolModel>('tools');
  await Hive.openBox<FriendModel>('friends');
  await Hive.openBox<LendModel>('lends');
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(
      //   title: 'JOKO TOOLS',
      // ),
      home: BottomNav(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:joko_tools/bloc/tool/tool_bloc.dart';
import 'package:joko_tools/injection.dart';
import 'package:joko_tools/models/friend_model.dart';
import 'package:joko_tools/models/lend_model.dart';
import 'package:joko_tools/models/tool_model.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await configureInjection(Environment.dev);

  Hive.registerAdapter(ToolModelAdapter());
  Hive.registerAdapter(FriendModelAdapter());
  Hive.registerAdapter(LendModelAdapter());

  await Hive.openBox<ToolModel>('tools');
  await Hive.openBox<FriendModel>('friends');
  await Hive.openBox<LendModel>('lends');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // BlocProvider<ToolBloc>(create: (context) => ToolBloc())

        BlocProvider<ToolBloc>(
            create: (context) => ToolBloc()..add(const ToolEvent.addTools())),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyHomePage(
          title: 'JOKO TOOLS',
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // @override
  // void initState() {
  //   print('init bro');
  //   // BlocProvider.of<ToolBloc>(context).add(AddTools());
  //   print('init bros');
  //   super.initState();

  //   BlocProvider.of<ToolBloc>(context).add(const ToolEvent.addTools());
  //   print('init bross');
  // }

  // @override
  // void didChangeDependencies() {
  //   print('didChangeDependencies bross');
  //   BlocProvider.of<ToolBloc>(context).add(const ToolEvent.addTools());
  //   //do whatever you want with the bloc here.
  //   super.didChangeDependencies();
  //   print('didChangeDependencies bross2');
  // }

  @override
  Widget build(BuildContext context) {
    // final toolBloc = BlocProvider.of<ToolBloc>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            IconButton(
              splashRadius: 20,
              onPressed: () {
                BlocProvider.of<ToolBloc>(context)
                    .add(const ToolEvent.addTools());
              },
              icon: Icon(Icons.home, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}

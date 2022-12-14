import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_basic/src/counter/counter_page.dart';
import 'package:riverpod_basic/src/home/home_page.dart';

void main() {
  runApp(const ProviderScope(
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RiverPod Basic',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      initialRoute: '/counter',
      routes: {
        '/home': (context) => const HomePage(),
        '/counter': (context) => const CounterPage(),
      },
    );
  }
}

import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = StateNotifierProvider(
  (ref) => CounterController(),
);

class CounterController extends StateNotifier {
  CounterController() : super(0);
  String n1 = "hello";
  int n = 3;

  void test() => n + 4;

  void increment() => state++;
}

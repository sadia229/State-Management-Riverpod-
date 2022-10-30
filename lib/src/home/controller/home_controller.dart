import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_basic/src/base/base_state.dart';

/// providers
final currentDate = Provider<DateTime>(
  (ref) => DateTime.now(),
);

final counterProvider = StateNotifierProvider<CounterController, BaseState>(
  (ref) => CounterController(ref: ref),
);

/// controllers
class CounterController extends StateNotifier<BaseState> {
  final Ref? ref;

  CounterController({this.ref}) : super(const InitialState());
  int number = 0;

  increment(n1) {
    int n1 = 0;
    n1=n1+1;
    number = n1;
  }

  decrement(n1) {
    int n1 = 0;
    n1--;
    number = n1;
  }
}

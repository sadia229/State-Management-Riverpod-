import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_basic/src/counter/counter_controller.dart';
import 'package:riverpod_basic/style/k_text_style.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        final count = ref.watch(counterProvider);
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: const Text('counter'),
            centerTitle: true,
            backgroundColor: Colors.black54,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  count.toString(),
                  style: KTextStyle.headline1,
                ),
                ElevatedButton(
                  onPressed: () {
                  ref.read(counterProvider.notifier).increment();
                  print(count);
                  },
                  child: const Text('+'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

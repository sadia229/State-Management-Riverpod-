import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_basic/src/home/controller/home_controller.dart';
import 'package:riverpod_basic/style/k_text_style.dart';

class HomePage extends ConsumerWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final date = ref.watch(currentDate);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              date.toIso8601String(),
              style: KTextStyle.headline1,
            ),
          ),
        ],
      ),
    );
  }
}

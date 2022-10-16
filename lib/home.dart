import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';

final hidechat = StateProvider<bool>(
  (ref) => true,
);

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Future<void> hide() async {
      await Future.delayed(const Duration(seconds: 5), () {
        ref.read(hidechat.notifier).state = false;
      });
    }

    useEffect((() {
      hide();
    }));
    final hidevalue = ref.watch(hidechat);
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to CLoudML'),
        centerTitle: true,
      ),
      body: Lottie.network(
        'https://assets9.lottiefiles.com/packages/lf20_tZM2243sgC.json',
      ),
      floatingActionButton: hidevalue
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const SizedBox(
                  width: 10,
                ),
                const Text('Chat with Mentor'),
                FloatingActionButton(
                  backgroundColor: Colors.white,
                  onPressed: () {},
                  child: Lottie.network(
                    'https://assets7.lottiefiles.com/packages/lf20_iilq3soe.json',
                  ),
                ),
              ],
            )
          : null,
    );
  }
}

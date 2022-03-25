import 'package:carrera_cucei_2022/features/login/providers/login_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final initializationProvider = FutureProvider((ref) async {
  final authNotifer = ref.read(authNotifierProvider.notifier);
  await authNotifer.checkAndUpdateLoginStatus();
  return;
});

class SplashPage extends ConsumerWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(initializationProvider, (previous, next) { });
    return Container();
  }
}

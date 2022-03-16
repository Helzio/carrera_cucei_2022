import 'package:carrera_cucei_2022/features/login/providers/login_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return WillPopScope(
      onWillPop: () {
        ref.read(loginProvider.notifier).setShowing();
        return Future.value(true);
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Menú principal'),
        ),
        body: Container(),
        drawer: Drawer(
          child: Column(
            children: [
              DrawerHeader(child: Container()),
            ],
          ),
        ),
      ),
    );
  }
}

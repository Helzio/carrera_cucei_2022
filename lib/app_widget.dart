import 'package:carrera_cucei_2022/features/corredor/providers/corredor_provider.dart';
import 'package:carrera_cucei_2022/features/login/application/auth_notifier.dart';
import 'package:carrera_cucei_2022/features/login/providers/login_providers.dart';
import 'package:carrera_cucei_2022/routes/app_route.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppWidget extends ConsumerWidget {
  AppWidget({Key? key}) : super(key: key);

  final appRouter = AppRouter();

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    ref.listen<AuthState>(authNotifierProvider, (prev, next) {
      next.maybeWhen(
        notLogged: () {
          appRouter.pushAndPopUntil(
            const LoginRoute(),
            predicate: (_) => false,
          );
        },
        logged: (corredor) async {
          ref.read(corredorProvider.notifier).setCorredor(corredor);
          appRouter.pushAndPopUntil(
            const HomeRoute(),
            predicate: (_) => false,
          );
        },
        orElse: () {},
      );
    });

    return MaterialApp.router(
      title: 'Carrera CUCEI 2022',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData.dark(),
      routeInformationParser: appRouter.defaultRouteParser(),
      routerDelegate: appRouter.delegate(),
    );
  }
}

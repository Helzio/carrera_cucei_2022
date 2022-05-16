import 'package:auto_route/auto_route.dart';
import 'package:carrera_cucei_2022/features/corredor/providers/corredor_provider.dart';
import 'package:carrera_cucei_2022/features/login/application/api_login_notifier.dart';
import 'package:carrera_cucei_2022/features/login/providers/login_providers.dart';
import 'package:carrera_cucei_2022/features/registro/application/registro_notifier.dart';
import 'package:carrera_cucei_2022/features/registro/providers/registro_providers.dart';
import 'package:carrera_cucei_2022/presentation/login_page/widgets/login_form_widget.dart';
import 'package:carrera_cucei_2022/routes/app_route.gr.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 500))
        .then((value) => ref.read(loginProvider.notifier).setShowing());
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(loginProvider);

    ref.listen<RegistroState>(registroProvider, (previous, next) {
      next.option.fold(
        () => null,
        (some) => FocusScope.of(context).unfocus(),
      );
    });

    ref.listen<ApiLoginState>(apiloginProvider, (previous, next) {
      next.option.fold(
        () => null,
        (some) {
          return some.fold(
            (failure) {
              failure.when(
                internet: () {
                  ref.read(loginProvider.notifier).setInitial();
                  CoolAlert.show(
                    context: context,
                    title: "Sin conexión",
                    barrierDismissible: false,
                    animType: CoolAlertAnimType.slideInUp,
                    onConfirmBtnTap: () {
                      AutoRouter.of(context).pop();
                      ref.read(loginProvider.notifier).setShowing();
                    },
                    confirmBtnColor: const Color(0xfff7b100),
                    type: CoolAlertType.warning,
                    text:
                        "Verifica tu conexión a Internet e intentalo nuevamente.",
                  );
                },
                server: () {
                  ref.read(loginProvider.notifier).setInitial();
                  CoolAlert.show(
                    context: context,
                    title: "Problema con el Servidor",
                    barrierDismissible: false,
                    animType: CoolAlertAnimType.slideInUp,
                    onConfirmBtnTap: () {
                      AutoRouter.of(context).pop();
                      ref.read(loginProvider.notifier).setShowing();
                    },
                    confirmBtnColor: const Color(0xfff7b100),
                    type: CoolAlertType.error,
                    text:
                        "Hay un problema con el servidor. Si el problema persiste comunicate con el área de soporte.",
                  );
                },
                datosInvalidos: () {
                  ref.read(loginProvider.notifier).setInitial();
                  CoolAlert.show(
                    context: context,
                    title: "Datos incorrectos",
                    barrierDismissible: false,
                    animType: CoolAlertAnimType.slideInUp,
                    onConfirmBtnTap: () {
                      AutoRouter.of(context).pop();
                      ref.read(loginProvider.notifier).setShowing();
                    },
                    confirmBtnColor: const Color(0xfff7b100),
                    type: CoolAlertType.error,
                    text:
                        "La combinación de correo y contraseña es incorrecta.",
                  );
                },
              );
            },
            (corredor) async {
              ref.read(loginProvider.notifier).setInitial();
              await Future.delayed(const Duration(milliseconds: 500));
              ref.read(corredorProvider.notifier).setCorredor(corredor);
              AutoRouter.of(context).replace(const HomeRoute());
            },
          );
        },
      );
    });

    return Stack(
      children: [
        Image.asset(
          "assets/images/fondo2.png",
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.fitHeight,
        ),
        AnimatedContainer(
          duration: const Duration(milliseconds: 350),
          color: state.maybeWhen(
            orElse: () => Colors.black.withOpacity(.41),
            registro: () => Colors.black.withOpacity(.8),
          ),
        ),
        AnimatedOpacity(
          duration: const Duration(milliseconds: 350),
          opacity: state.maybeWhen(
            orElse: () => 1,
            registro: () => 0,
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 40,
                          right: 40,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 24,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 28.0,
                              ),
                              child: SizedBox(
                                height: 260,
                                child: Stack(
                                  children: [
                                    Center(
                                      child: Image.asset(
                                        "assets/images/logo.png",
                                        width: 180,
                                        height: 180,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            AnimatedOpacity(
                              opacity: state.when(
                                initial: () => 0,
                                showing: () => 1,
                                loading: () => 0,
                                registro: () => 0,
                              ),
                              duration: const Duration(milliseconds: 350),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Login',
                                    style: GoogleFonts.poppins(
                                      fontSize: 24,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  const LoginFormWidget(),
                                  Align(
                                    child: TextButton(
                                      onPressed: () async {
                                        ref
                                            .read(loginProvider.notifier)
                                            .setRegistro();
                                        await Future.delayed(
                                          const Duration(milliseconds: 350),
                                        );
                                        AutoRouter.of(context)
                                            .push(const RegistroRoute());
                                      },
                                      child: const Text(
                                        "¿No tienes cuenta? Registrate ahora",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(child: Container()),
                            AnimatedOpacity(
                              duration: const Duration(milliseconds: 150),
                              opacity: state.when(
                                initial: () => 0,
                                showing: () => 0,
                                loading: () => 1,
                                registro: () => 0,
                              ),
                              child: Column(
                                children: const [
                                  Text(
                                    "Iniciando sesión",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  LinearProgressIndicator(
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 88,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

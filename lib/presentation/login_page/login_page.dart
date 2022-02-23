import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tarea/features/login/providers/login_providers.dart';
import 'package:tarea/presentation/login_page/widgets/login_form_widget.dart';
import 'package:tarea/routes/app_route.gr.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 1500))
        .then((value) => ref.read(loginProvider.notifier).setShowing());
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(loginProvider);
    return Stack(
      children: [
        Image.asset(
          "assets/images/fondo2.png",
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.fitHeight,
        ),
        Container(
          color: Colors.black.withOpacity(.41),
        ),
        Scaffold(
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
                                    child: SvgPicture.asset(
                                      "assets/images/logo.svg",
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
                                    onPressed: () {
                                      AutoRouter.of(context).push(const RegistroRoute());
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

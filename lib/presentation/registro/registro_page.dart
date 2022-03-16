import 'package:auto_route/auto_route.dart';
import 'package:carrera_cucei_2022/features/login/providers/login_providers.dart';
import 'package:carrera_cucei_2022/features/registro/application/registro_notifier.dart';
import 'package:carrera_cucei_2022/features/registro/providers/registro_providers.dart';
import 'package:carrera_cucei_2022/presentation/shared/widgets/text_field_base.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class RegistroPage extends ConsumerStatefulWidget {
  const RegistroPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RegistroPageState();
}

class _RegistroPageState extends ConsumerState<RegistroPage> {
  final _formKey = GlobalKey<FormState>();
  bool registrado = false;

  @override
  void initState() {
    super.initState();
    Future.microtask(() => ref.read(registroProvider.notifier).reset());
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<RegistroState>(registroProvider, (previous, next) {
      next.option.fold(
        () => null,
        (some) => some.fold(
          (failure) => failure.when(
            internet: () {
              ref.read(loginProvider.notifier).setInitial();
              CoolAlert.show(
                context: context,
                title: "Sin conexión",
                barrierDismissible: false,
                confirmBtnColor: const Color(0xfff7b100),
                type: CoolAlertType.warning,
                text: "Verifica tu conexión a Internet e intentalo nuevamente.",
              );
            },
            server: () {
              CoolAlert.show(
                context: context,
                title: "Problema con el Servidor",
                barrierDismissible: false,
                confirmBtnColor: const Color(0xfff7b100),
                type: CoolAlertType.error,
                text:
                    "Hay un problema con el servidor. Si el problema persiste comunicate con el área de soporte.",
              );
            },
            usuarioYaExiste: () {
              CoolAlert.show(
                context: context,
                title: "El corredor ya existe",
                barrierDismissible: false,
                onConfirmBtnTap: () {
                  AutoRouter.of(context).pop();
                },
                confirmBtnColor: const Color(0xfff7b100),
                type: CoolAlertType.error,
                text:
                    "Ya existe un corredor con el mismo código. Introduce un código distinto e intentalo nuevametne.",
              );
            },
            sqlConection: () {
              CoolAlert.show(
                context: context,
                title: "Ha ocurrido un error",
                barrierDismissible: false,
                onConfirmBtnTap: () {
                  AutoRouter.of(context).pop();
                },
                confirmBtnColor: const Color(0xfff7b100),
                type: CoolAlertType.error,
                text:
                    "Ha ocurrido un error al conectar con la base de datos. Si el problema persiste comunicate con el área de soporte.",
              );
            },
            sqlRegister: () {
              CoolAlert.show(
                context: context,
                title: "Error",
                barrierDismissible: false,
                onConfirmBtnTap: () {
                  AutoRouter.of(context).pop();
                },
                confirmBtnColor: const Color(0xfff7b100),
                type: CoolAlertType.error,
                text:
                    "Ha ocurrido un error al registrar al corredor. Si el problema persiste comunicate con el área de soporte.",
              );
            },
          ),
          (succes) {
            setState(() {
              registrado = true;
            });
            CoolAlert.show(
              context: context,
              title: "Registro correcto",
              barrierDismissible: false,
              onConfirmBtnTap: () async {
                AutoRouter.of(context).pop();
                await Future.delayed(const Duration(milliseconds: 50));
                AutoRouter.of(context).pop();
              },
              confirmBtnColor: const Color(0xfff7b100),
              type: CoolAlertType.success,
              text: "El usuario ha sido registrado correctamente.",
            );
          },
        ),
      );
    });
    final state = ref.watch(registroProvider);

    return WillPopScope(
      onWillPop: () {
        ref.read(loginProvider.notifier).setShowing();
        return Future.value(true);
      },
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 300),
        opacity: registrado ? 0 : 1,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            toolbarHeight: 72,
          ),
          backgroundColor: Colors.transparent,
          body: AbsorbPointer(
            absorbing: state.loading,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 40.0,
                right: 40.0,
                top: 32,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Corredor nuevo',
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const SizedBox(
                              height: 8,
                            ),
                            TextFieldBase(
                              label: "Nombre:",
                              hint: "",
                              initialValue: "",
                              textInputType: TextInputType.name,
                              textCapitalization: TextCapitalization.words,
                              textInputAction: TextInputAction.next,
                              validation: (string) {
                                if (string == null || string.isEmpty) {
                                  return "* El nombre es requerido";
                                } else {
                                  return null;
                                }
                              },
                              icon: const Icon(
                                Icons.person,
                                color: Colors.white,
                              ),
                              onChanged: (value) {
                                ref
                                    .read(registroProvider.notifier)
                                    .changeNombre(value);
                              },
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                            TextFieldBase(
                              label: "Código:",
                              hint: "",
                              initialValue: "",
                              maxLength: 10,
                              textInputType: TextInputType.number,
                              textCapitalization: TextCapitalization.none,
                              textInputAction: TextInputAction.next,
                              validation: (string) {
                                if (string == null || string.isEmpty) {
                                  return "* El código es requerido";
                                } else {
                                  return null;
                                }
                              },
                              onChanged: (value) {
                                ref
                                    .read(registroProvider.notifier)
                                    .changeCodigo(value);
                              },
                              icon: const Icon(
                                Icons.code,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                            TextFieldBase(
                              label: "Contraseña:",
                              hint: "",
                              textInputType: TextInputType.visiblePassword,
                              textCapitalization: TextCapitalization.none,
                              textInputAction: TextInputAction.next,
                              oscureText: true,
                              validation: (string) {
                                if (string == null || string.isEmpty) {
                                  return "* La contraseña es requerida";
                                } else {
                                  return null;
                                }
                              },
                              icon: const Icon(
                                Icons.password,
                                color: Colors.white,
                              ),
                              initialValue: "",
                              onChanged: (value) {
                                ref
                                    .read(registroProvider.notifier)
                                    .changePassword(value);
                              },
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                            TextFieldBase(
                              label: "Teléfono:",
                              textInputType: TextInputType.phone,
                              textCapitalization: TextCapitalization.none,
                              textInputAction: TextInputAction.next,
                              maxLength: 10,
                              validation: (string) {
                                if (string == null || string.isEmpty) {
                                  return "* El teléfono es requerido";
                                } else {
                                  return null;
                                }
                              },
                              icon: const Icon(
                                Icons.phone,
                                color: Colors.white,
                              ),
                              hint: "",
                              initialValue: "",
                              onChanged: (value) {
                                ref
                                    .read(registroProvider.notifier)
                                    .changeTelefono(value);
                              },
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                            TextFieldBase(
                              label: "Correo:",
                              hint: "",
                              initialValue: "",
                              textInputAction: TextInputAction.next,
                              validation: (string) {
                                if (string == null || string.isEmpty) {
                                  return "* El correo es requerido";
                                } else {
                                  return null;
                                }
                              },
                              textInputType: TextInputType.emailAddress,
                              textCapitalization: TextCapitalization.none,
                              onChanged: (value) {
                                ref
                                    .read(registroProvider.notifier)
                                    .changeEmail(value);
                              },
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                            TextFieldBase(
                              label: "Escuela:",
                              hint: "",
                              initialValue: "",
                              textInputType: TextInputType.name,
                              textCapitalization: TextCapitalization.sentences,
                              textInputAction: TextInputAction.next,
                              validation: (string) {
                                if (string == null || string.isEmpty) {
                                  return "* La escuela es requerida";
                                } else {
                                  return null;
                                }
                              },
                              icon: const Icon(
                                Icons.business,
                                color: Colors.white,
                              ),
                              onChanged: (value) {
                                ref
                                    .read(registroProvider.notifier)
                                    .changeEscuela(value);
                              },
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                            TextFieldBase(
                              icon: const Icon(
                                Icons.school,
                                color: Colors.white,
                              ),
                              label: "Semestre:",
                              hint: "",
                              initialValue: "",
                              textInputType: TextInputType.name,
                              textCapitalization: TextCapitalization.sentences,
                              textInputAction: TextInputAction.done,
                              validation: (string) {
                                if (string == null || string.isEmpty) {
                                  return "* El semestre es requerido";
                                } else {
                                  return null;
                                }
                              },
                              onChanged: (value) {
                                ref
                                    .read(registroProvider.notifier)
                                    .changeSemestre(value);
                              },
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: SizedBox(
                                height: 48,
                                child: ElevatedButton(
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      FocusScope.of(context)
                                          .requestFocus(FocusNode());
                                      ref
                                          .read(registroProvider.notifier)
                                          .registrar();
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: const Color(0xfff7b100),
                                  ),
                                  child: AnimatedContainer(
                                    width: state.loading ? 100 : 100,
                                    duration: const Duration(milliseconds: 350),
                                    child: state.loading
                                        ? const Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: LinearProgressIndicator(
                                                color: Colors.white,
                                              ),
                                            ),
                                          )
                                        : AnimatedOpacity(
                                            opacity: state.loading ? 0 : 1,
                                            duration: const Duration(
                                              milliseconds: 350,
                                            ),
                                            child: const Center(
                                              child: Text(
                                                "CREAR CUENTA",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

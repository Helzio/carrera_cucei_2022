import 'package:carrera_cucei_2022/features/login/providers/login_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginButton extends ConsumerWidget {
  const LoginButton({
    Key? key,
    required GlobalKey<FormState> formKey,
  })  : _formKey = formKey,
        super(key: key);

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    return SizedBox(
      height: 48,
      child: ElevatedButton(
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            FocusScope.of(context).requestFocus(FocusNode());
            ref.read(loginProvider.notifier).setLoading();
            ref.read(apiloginProvider.notifier).login();
          }
        },
        style: ElevatedButton.styleFrom(
          primary: const Color(0xfff7b100),
          //primary: Colors.grey.shade800,
        ),
        child: Text(
          "INICIAR SESIÓN",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w700,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}

import 'package:carrera_cucei_2022/features/login/providers/login_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EmailTextInput extends ConsumerWidget {
  const EmailTextInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    return TextFormField(
      cursorColor: Colors.white,
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.number,
      onChanged: (String email) {
        ref.read(apiloginProvider.notifier).changeEmail(email);
      },
      validator: (string) {
        if (string == null || string.isEmpty) {
          return "* El código es requerido";
        } else {
          return null;
        }
      },
      decoration: const InputDecoration(
        isDense: true,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        labelText: "Código:",
        counterText: "",
        labelStyle: TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
      textAlignVertical: TextAlignVertical.center,
    );
  }
}

import 'package:carrera_cucei_2022/features/login/providers/login_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PasswordTextInput extends ConsumerStatefulWidget {
  const PasswordTextInput({Key? key}) : super(key: key);

  @override
  _PasswordTextInputState createState() => _PasswordTextInputState();
}

class _PasswordTextInputState extends ConsumerState<PasswordTextInput> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.white,
      textInputAction: TextInputAction.done,
      onChanged: (String password) {
        ref.read(apiloginProvider.notifier).changePassword(password);
      },
      obscureText: obscureText,
      keyboardType: TextInputType.visiblePassword,
      validator: (string) {
        if (string == null || string.isEmpty) {
          return "* El password es requerido";
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
        isDense: true,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        labelText: "Password:",
        counterText: "",
        labelStyle: const TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
        suffixIconColor: Colors.white,
        suffixIcon: IconButton(
          icon: Icon(
            obscureText ? Icons.visibility : Icons.visibility_off,
            color: Colors.white,
          ),
          onPressed: () {
            setState(() {
              obscureText = !obscureText;
            });
          },
        ),
      ),
      textAlignVertical: TextAlignVertical.center,
    );
  }
}

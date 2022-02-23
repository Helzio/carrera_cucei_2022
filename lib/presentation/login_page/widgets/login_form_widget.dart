import 'package:flutter/material.dart';
import 'package:tarea/presentation/login_page/widgets/email_text_input.dart';
import 'package:tarea/presentation/login_page/widgets/login_button.dart';
import 'package:tarea/presentation/login_page/widgets/password_text_input.dart';

class LoginFormWidget extends StatefulWidget {
  const LoginFormWidget({Key? key}) : super(key: key);

  @override
  _LoginFormWidgetState createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const EmailTextInput(),
          const SizedBox(
            height: 16,
          ),
          const PasswordTextInput(),
          const SizedBox(
            height: 16,
          ),
          LoginButton(formKey: _formKey),
          const SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}

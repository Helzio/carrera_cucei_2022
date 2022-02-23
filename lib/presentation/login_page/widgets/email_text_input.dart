import 'package:flutter/material.dart';

class EmailTextInput extends StatelessWidget {
  const EmailTextInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(
    BuildContext context,
  ) {
    return TextFormField(
      cursorColor: Colors.white,
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.emailAddress,
      onChanged: (String email) {},
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
        labelText: "Email:",
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

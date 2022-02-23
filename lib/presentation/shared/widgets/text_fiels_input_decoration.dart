import 'package:flutter/material.dart';

InputDecoration textFieldInputDecoration({
  required String hint,
  required String label,
  required Icon icon,
}) {
  return InputDecoration(
    isDense: true,
    icon: icon,
    floatingLabelBehavior: FloatingLabelBehavior.always,
    labelText: label,
    labelStyle: const TextStyle(
      color: Color(0xFF363062),
    ),
    counterText: "",
    enabledBorder: const UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xFF363062),
      ),
    ),
    focusedBorder: const UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xFF363062),
      ),
    ),
    hintText: hint,
    hintStyle: const TextStyle(
      fontSize: 14,
      color: Colors.black,
    ),
  );
}

InputDecoration textFieldInputDecorationDetalle({
  required String hint,
  required String label,
  required Icon icon,
}) {
  return InputDecoration(
    isDense: true,
    icon: icon,
    floatingLabelBehavior: FloatingLabelBehavior.always,
    labelText: label,
    labelStyle: const TextStyle(
      color: Color(0xFF363062),
    ),
    counterText: "",
    enabledBorder: const UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.transparent,
      ),
    ),
    focusedBorder: const UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.transparent,
      ),
    ),
    hintText: hint,
    hintStyle: const TextStyle(
      fontSize: 14,
      color: Colors.black,
    ),
  );
}

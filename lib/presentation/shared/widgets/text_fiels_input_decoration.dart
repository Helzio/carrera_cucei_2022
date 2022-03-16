import 'package:flutter/material.dart';

InputDecoration textFieldInputDecoration({
  required String hint,
  required String label,
  required Icon icon,
}) {
  return InputDecoration(
    isDense: true,
    filled: true,
    floatingLabelBehavior: FloatingLabelBehavior.always,
    suffixIcon: icon,
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white.withOpacity(.5),
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white.withOpacity(.5),
      ),
    ),
    border: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white.withOpacity(.5),
      ),
    ),
    labelText: label,
    counterText: "",
    labelStyle: const TextStyle(
      color: Colors.white,
      fontSize: 16,
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
    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.transparent,
      ),
    ),
    focusedBorder: const OutlineInputBorder(
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

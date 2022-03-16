import 'package:carrera_cucei_2022/presentation/shared/widgets/text_fiels_input_decoration.dart';
import 'package:flutter/material.dart';

class TextFieldBase extends StatelessWidget {
  final String label;
  final String hint;
  final String initialValue;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final String? Function(String?)? validation;
  final TextCapitalization? textCapitalization;
  final Function(String)? onChanged;
  final bool oscureText;
  final bool detalle;
  final int? maxLength;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final Icon icon;
  const TextFieldBase({
    Key? key,
    required this.label,
    required this.hint,
    required this.initialValue,
    this.textInputType,
    this.textInputAction,
    this.validation,
    this.textCapitalization,
    required this.onChanged,
    this.oscureText = false,
    this.maxLength,
    this.controller,
    this.focusNode,
    this.detalle = false,
    this.icon = const Icon(Icons.email),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      initialValue: controller == null ? initialValue : null,
      keyboardType: textInputType,
      maxLength: maxLength,
      textInputAction: textInputAction,
      validator: validation,
      textCapitalization: textCapitalization ?? TextCapitalization.none,
      onChanged: onChanged,
      decoration: detalle
          ? textFieldInputDecorationDetalle(
              label: label,
              hint: hint,
              icon: icon,
            )
          : textFieldInputDecoration(
              label: label,
              hint: hint,
              icon: icon,
            ),
      style: const TextStyle(
        fontSize: 14,
        height: 1,
      ),
      obscureText: oscureText,
      focusNode: focusNode,
    );
  }
}

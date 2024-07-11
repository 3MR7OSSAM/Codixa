import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomFormField extends StatelessWidget {
  CustomFormField(
      {Key? key,
        required this.controller,
        required this.onChanged,
        required this.hintText,
        this.validator,
        required this.obscureText,
        this.isCenterHint,
        required this.label,
        this.numbersOnly = false,
        this.color,
        this.isEnabled})
      : super(key: key);

  final bool obscureText;
  final FormFieldValidator<String>? validator;
  final TextEditingController controller;
  final Function(String)? onChanged;
  final String? hintText;
  final String label;
  final bool? isCenterHint;
  final Color? color;
  bool? isEnabled;
  final bool numbersOnly;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: isEnabled ?? true,
      validator: validator,
      obscureText: obscureText,
      keyboardType: numbersOnly
          ? const TextInputType.numberWithOptions(decimal: true)
          : TextInputType.text,
      inputFormatters: numbersOnly
          ? [FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d{0,2}$'))]
          : null,
      cursorColor: Colors.grey,
      style: TextStyle(
        color: color ?? Colors.black,
        fontWeight: FontWeight.bold,
      ),
      controller: controller,
      onChanged: onChanged,
      textAlign: isCenterHint == null ? TextAlign.left : TextAlign.center,
      decoration: InputDecoration(
        disabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: color ?? Colors.blue,
          ),
        ),
        labelText: label,
        labelStyle: TextStyle(color: color ??Colors.grey,),
        hintText: hintText,
        hintStyle: const TextStyle(
          fontSize: 12,
          color: Colors.blue,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: color ?? Colors.grey,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: const BorderSide(
            width: 1,
            color: Colors.blue,
          ),
        ),
        focusColor: Colors.blue,
        errorBorder: UnderlineInputBorder(
          borderSide: const BorderSide(
            width: 1,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}

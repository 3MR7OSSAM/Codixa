import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProfileFormField extends StatelessWidget {
  ProfileFormField(
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
        disabledBorder: OutlineInputBorder(
          borderSide:  BorderSide(
            width: 1,
            color:   color??Color(0xff115bbf),
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        labelText: label,
        labelStyle: TextStyle(color: color??Colors.black),
        hintText: hintText,
        hintStyle: const TextStyle(
          fontSize: 12,
          color:Color(0xff115bbf),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: color ?? Colors.grey,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 1,
            color:Color(0xff115bbf),
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        focusColor: const Color(0xff115bbf),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 1,
            color: Colors.red,
          ),
          borderRadius: BorderRadius.circular(10.0),
// Customize the error border color
        ),
      ),
    );
  }
}

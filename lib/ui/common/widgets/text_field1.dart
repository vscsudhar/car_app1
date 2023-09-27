import 'package:flutter/material.dart';

import '../shared/styles.dart';

class TextField1 extends StatelessWidget {
  const TextField1({
    this.obscureText,
    this.initialValue,
    this.hintText,
    this.hintStyle,
    this.onSaved,
    this.onChanged,
    this.validator,
    this.color,
    super.key,
  });

  final String? initialValue;
  final String? hintText;
  final TextStyle? hintStyle;
  final void Function(String?)? onSaved;
  final void Function(String?)? onChanged;
  final String? Function(String?)? validator;
  final bool? obscureText;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.text, //username or email
      initialValue: initialValue ?? '',
      style: fontFamilyBold.size16.copyWith(color: color ?? appwhite1),
      decoration: InputDecoration(
        focusColor: Colors.white,
        hintText: hintText ?? '',
        hintStyle: hintStyle,
        border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white)),
      ),
      onSaved: onSaved,
      onChanged: onChanged,
      validator: validator,
      obscureText: obscureText ?? false,
      autofocus: true,
    );
  }
}

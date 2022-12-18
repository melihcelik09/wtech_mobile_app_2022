import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ForgotTextField extends StatefulWidget {
  const ForgotTextField({
    super.key,
    this.labelText,
    this.prefixIcon,
    this.labelStyle,
    this.suffixIcon,
    required this.tfcontroller,
    this.errorText,
    this.onChanged,
  });

  final String? labelText;
  final IconData? prefixIcon;
  final TextEditingController tfcontroller;
  final TextStyle? labelStyle;
  final Widget? suffixIcon;
  final String? errorText;
  final Function(String?)? onChanged;

  @override
  State<ForgotTextField> createState() => _ForgotTextFieldState();
}

class _ForgotTextFieldState extends State<ForgotTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        labelText: widget.labelText,
        labelStyle: widget.labelStyle,
        suffixIcon: widget.suffixIcon,
        errorText: widget.errorText,
      ),
      controller: widget.tfcontroller,
    );
  }
}

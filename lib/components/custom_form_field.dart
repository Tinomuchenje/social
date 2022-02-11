import 'package:flutter/material.dart';

import 'package:social/constants/style_constants.dart';

class CustomPasswordFormField extends StatefulWidget {
  String? hintText;
  bool passwordVisible;
  TextEditingController? fieldValue;
  String? Function(String?)? customValidator;
  CustomPasswordFormField({
    Key? key,
    this.hintText,
    required this.passwordVisible,
    required this.fieldValue,
    this.customValidator,
  }) : super(key: key);

  @override
  State<CustomPasswordFormField> createState() =>
      _CustomPasswordFormFieldState();
}

class _CustomPasswordFormFieldState extends State<CustomPasswordFormField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: widget.fieldValue,
        obscureText: !widget.passwordVisible,
        decoration: InputDecoration(
          filled: true,
          fillColor: defaultGrey,
          contentPadding: formFieldContentPadding,
          hintText: widget.hintText,
          focusedBorder: OutlineInputBorder(
            borderRadius: defaultBorderRadius,
            borderSide: const BorderSide(
              color: Colors.transparent,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: const BorderSide(
              color: Colors.transparent,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: defaultBorderRadius,
          ),
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                widget.passwordVisible = !widget.passwordVisible;
              });
            },
            child: Icon(widget.passwordVisible
                ? Icons.visibility
                : Icons.visibility_off),
          ),
        ),
        validator: widget.customValidator,
      ),
    );
  }
}

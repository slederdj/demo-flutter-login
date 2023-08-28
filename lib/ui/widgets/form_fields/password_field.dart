import 'package:app_example/constants.dart';
import 'package:flutter/material.dart';
import 'package:app_example/utils/validators.dart';

class PasswordField extends StatefulWidget {
  const PasswordField(
      {Key? key, required this.controller, required this.onValidationChanged})
      : super(key: key);
  final TextEditingController controller;
  final Function(bool isValid) onValidationChanged; //Callback function

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  final textFieldFocusNode = FocusNode();
  bool _obscured = false;
  String? _passwordErrorText;

  void _toggleObscured() {
    setState(() {
      _obscured = !_obscured;
      if (textFieldFocusNode.hasPrimaryFocus) return;
      textFieldFocusNode.canRequestFocus = false;
    });
  }

  void _validatePassword(String value) {
    final errorText = validPassword(value);
    setState(() {
      _passwordErrorText = errorText;
    });
    widget.onValidationChanged(errorText == null);
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.visiblePassword,
      controller: widget.controller,
      obscureText: _obscured,
      focusNode: textFieldFocusNode,
      cursorColor: kPrimaryColor,
      onChanged: _validatePassword,
      decoration: InputDecoration(
        floatingLabelBehavior:
            FloatingLabelBehavior.never, //Hides label on focus or if filled
        labelText: "Password",
        hintText: "Your password",
        errorText: _passwordErrorText,
        prefixIcon: Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: Icon(Icons.lock),
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: GestureDetector(
            onTap: _toggleObscured,
            child: Icon(
              _obscured
                  ? Icons.visibility_rounded
                  : Icons.visibility_off_rounded,
              size: 24,
            ),
          ),
        ),
      ),
    );
  }
}

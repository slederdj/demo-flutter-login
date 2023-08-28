import 'package:app_example/constants.dart';
import 'package:app_example/utils/validators.dart';
import 'package:flutter/material.dart';

class EmailField extends StatefulWidget {
  const EmailField(
      {Key? key, required this.controller, required this.onValidationChanged})
      : super(key: key);
  final TextEditingController controller;
  final Function(bool isValid) onValidationChanged; //Callback function

  @override
  State<EmailField> createState() => _EmailFieldState();
}

class _EmailFieldState extends State<EmailField> {
  String? _emailErrorText;

  void _validateEmail(String value) {
    final errorText = validEmail(value);
    print(errorText);
    setState(() {
      _emailErrorText = errorText;
    });
    widget.onValidationChanged(errorText == null);
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      cursorColor: kPrimaryColor,
      onChanged: _validateEmail,
      decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.never,
          labelText: "Email",
          hintText: "Your email",
          errorText: _emailErrorText,
          prefixIcon: Padding(
            padding: EdgeInsets.all(defaultPadding),
            child: Icon(Icons.person),
          )),
    );
  }
}

import 'package:app_example/constants.dart';
import 'package:flutter/material.dart';

class EmailField extends StatelessWidget {
  const EmailField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      cursorColor: kPrimaryColor,
      onSaved: (email) {}, //TODO Add Logic to validate email.
      decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.never,
          labelText: "Email",
          hintText: "Your email",
          prefixIcon: Padding(
            padding: EdgeInsets.all(defaultPadding),
            child: Icon(Icons.person),
          )),
    );
  }
}

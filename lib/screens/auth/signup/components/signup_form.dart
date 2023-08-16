import 'package:app_example/constants.dart';
import 'package:app_example/screens/auth/login/login_screen.dart';
import 'package:app_example/widgets/already_account.dart';
import 'package:app_example/widgets/form_fields/email_field.dart';
import 'package:app_example/widgets/form_fields/password_field.dart';
import 'package:flutter/material.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          EmailField(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: PasswordField()),
          const SizedBox(height: defaultPadding / 2),
          ElevatedButton(
            onPressed: () {},
            child: Text("Sign Up".toUpperCase()),
          ),
          const SizedBox(height: defaultPadding),
          AlreadyAccount(
            login: false,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
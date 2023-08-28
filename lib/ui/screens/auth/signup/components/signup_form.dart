import 'package:app_example/constants.dart';
import 'package:app_example/ui/screens/auth/login/login_screen.dart';
import 'package:app_example/ui/widgets/already_account.dart';
import 'package:app_example/ui/widgets/form_fields/email_field.dart';
//import 'package:app_example/ui/widgets/form_fields/password_field.dart';
import 'package:flutter/material.dart';

class SignUpForm extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          EmailField(
            controller: _emailController,
            onValidationChanged: (isValid) => true,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding),
              child: EmailField(
                controller: _emailController,
                onValidationChanged: (isValid) => true,
              )),
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

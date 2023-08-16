import 'package:app_example/screens/auth/signup/signup_screen.dart';
import 'package:app_example/widgets/already_account.dart';
import 'package:app_example/widgets/form_fields/email_field.dart';
import 'package:app_example/widgets/form_fields/password_field.dart';
import 'package:flutter/material.dart';

import 'package:app_example/constants.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}): super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          EmailField(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: defaultPadding),
            child: PasswordField(),
          ),
          SizedBox(height: defaultPadding,),
          Hero(
            tag: "login_btn",
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Login".toUpperCase()
              ),
            )
          ),
          SizedBox(height: defaultPadding,),
          AlreadyAccount(
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SignupScreen();
                  }
                )
              );
            },
          )
        ],
      ),
    );
  }
}
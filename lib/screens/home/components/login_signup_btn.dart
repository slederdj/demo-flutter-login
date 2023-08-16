import 'package:app_example/screens/auth/login/login_screen.dart';
import 'package:app_example/screens/auth/signup/signup_screen.dart';
import 'package:flutter/material.dart';

import 'package:app_example/constants.dart';

class LoginAndSignupBtn extends StatelessWidget {
  const LoginAndSignupBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Hero(
            tag: "login_btn",
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
                  }));
              },
              child: Text("Login".toUpperCase()),
            )),
        const SizedBox(
          height: 16,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SignupScreen();
            }));
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: kPrimaryLightColor, elevation: 0),
          child: Text(
            "Sign Up".toUpperCase(),
            style: TextStyle(color: Colors.black),
          ),
        )
      ],
    );
  }
}

import 'package:app_example/screens/auth/signup/components/signup_form.dart';
import 'package:app_example/widgets/backgroud.dart';
import 'package:app_example/widgets/responsive.dart';
import 'package:app_example/widgets/svg_image_loader.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
        child: SingleChildScrollView(
      child: Responsive(
          mobile: _MobileSignUpScreen(),
          desktop: Row(
            children: [
              Expanded(
                child: SvgImageLoader(
                  path: "assets/icons/signup.svg",
                  text: "Sign Up",
                ),
              ),
              Expanded(
                  child: Row(
                children: const [
                  Spacer(),
                  Expanded(
                    flex: 8,
                    child: SignUpForm(),
                  ),
                  Spacer()
                ],
              ))
            ],
          )),
    ));
  }
}

class _MobileSignUpScreen extends StatelessWidget {
  const _MobileSignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SvgImageLoader(
          path: "assets/icons/signup.svg",
          text: "Sign Up",
        ),
        Row(
          children: const [
            Spacer(),
            Expanded(
              flex: 8,
              child: SignUpForm(),              
            ),
            Spacer()
          ],
        )
      ],
    );
  }
}

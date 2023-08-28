import 'package:app_example/ui/screens/auth/login/components/login_form.dart';
import 'package:app_example/ui/widgets/svg_image_loader.dart';
import 'package:flutter/material.dart';

import 'package:app_example/ui/widgets/responsive.dart';
import 'package:app_example/ui/widgets/backgroud.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
        child: SingleChildScrollView(
      child: Responsive(
        mobile: _MobileLoginScreen(),
        desktop: Row(
          children: [
            Expanded(
              child: SvgImageLoader(path: "assets/icons/size-desktop.svg"),
            ),
            Expanded(
                child: Row(
              children: [
                Spacer(),
                Expanded(flex: 8, child: LoginForm()),
                Spacer()
              ],
            ))
          ],
        ),
      ),
    ));
  }
}

class _MobileLoginScreen extends StatelessWidget {
  const _MobileLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SvgImageLoader(path: "assets/icons/size-mobile.svg"),
        Row(
          children: [Spacer(), Expanded(flex: 8, child: LoginForm()), Spacer()],
        )
      ],
    );
  }
}

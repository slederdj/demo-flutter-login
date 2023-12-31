import 'package:app_example/ui/screens/home/components/login_signup_btn.dart';
import 'package:app_example/ui/widgets/svg_image_loader.dart';
import 'package:flutter/material.dart';

import 'package:app_example/ui/widgets/responsive.dart';
import 'package:app_example/ui/widgets/backgroud.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
        child: SingleChildScrollView(
      child: SafeArea(
          child: Responsive(
        desktop: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
                child: SvgImageLoader(path: "assets/icons/size-desktop.svg")),
            Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SizedBox(
                  width: 450,
                  child: LoginAndSignupBtn(),
                )
              ],
            ))
          ],
        ),
        mobile: const _MobileWelcomeScreen(),
      )),
    ));
  }
}

class _MobileWelcomeScreen extends StatelessWidget {
  const _MobileWelcomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SvgImageLoader(path: "assets/icons/size-mobile.svg"),
        Row(
          children: const [
            Spacer(),
            Expanded(
              flex: 8,
              child: LoginAndSignupBtn(),
            ),
            Spacer()
          ],
        )
      ],
    );
  }
}

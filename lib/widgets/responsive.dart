import 'package:flutter/material.dart';
import 'package:app_example/constants.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  const Responsive(
      {Key? key, required this.mobile, this.tablet, required this.desktop})
      : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.sizeOf(context).width < maxWidthMobile;

  static bool isTablet(BuildContext context) =>
      MediaQuery.sizeOf(context).width >= maxWidthMobile &&
      MediaQuery.sizeOf(context).width <= minWidthDesktop;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.sizeOf(context).width > minWidthDesktop;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);

    if (size.width > minWidthDesktop) {
      return desktop;
    } else if (size.width >= maxWidthMobile && tablet != null) {
      return tablet!;
    } else {
      return mobile;
    }
  }
}

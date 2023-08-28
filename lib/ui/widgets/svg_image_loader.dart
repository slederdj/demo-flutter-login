import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

//import 'package:app_example/constants.dart';

class SvgImageLoader extends StatelessWidget {
  const SvgImageLoader({Key? key, required this.path}) : super(key: key);

  final String path;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 8,
              child: SvgPicture.asset(path),
            ),
            Spacer(),
          ],
        ),
      ],
    );
  }
}

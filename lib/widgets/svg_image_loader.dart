import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:app_example/constants.dart';

class SvgImageLoader extends StatelessWidget {
  const SvgImageLoader({Key? key, required this.path, this.text})
      : super(key: key);

  final String path;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text ?? '',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: defaultPadding * 2),
        Row(
          children: [
            Spacer(),
            Expanded(
              flex: 8,
              child: SvgPicture.asset(path),
            ),
            Spacer()
          ],
        ),
        SizedBox(height: defaultPadding * 2)
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constant.dart';

class IndexIndicator extends StatelessWidget {
  final String? image;
  const IndexIndicator({required this.image,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
            image!,
            height: 30),
        const SizedBox(
          height: 3,
        ),
        Container(
          height: 5,
          width: 5,
          decoration: BoxDecoration(
              color: appPurpleColor,
              shape: BoxShape.circle
          ),
        ),
      ],
    );
  }
}

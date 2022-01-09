import 'package:flutter/material.dart';

class PopupIconText extends StatelessWidget {
  final IconData? rowIcon;
  final String? rowText;
  const PopupIconText({Key? key, required this.rowText, required this.rowIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          rowIcon,
          color: Colors.black,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(rowText!),
      ],
    );
  }
}

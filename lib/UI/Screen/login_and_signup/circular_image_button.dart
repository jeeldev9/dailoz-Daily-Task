import 'package:flutter/material.dart';

class CircularImageButton extends StatelessWidget {
  final String? image;
  final double? circularPadding;
  const CircularImageButton({
    required this.image,
    this.circularPadding = 1,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(circularPadding!),
      height: 35,
      width: 35,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade600),
        shape: BoxShape.circle,
      ),
      child: Image.asset(
        image!,
        fit: BoxFit.cover,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AppTextButton extends StatelessWidget {
  final Alignment? textAlignment;
  final String? buttonText;
  final VoidCallback buttonPressEvent;
  const AppTextButton({
    Key? key,
    this.textAlignment = Alignment.center,
    required this.buttonPressEvent,
    this.buttonText = "",
    required this.w,
  }) : super(key: key);

  final double w;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w,
      alignment: textAlignment,
      child: TextButton(
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(Colors.transparent),
        ),
        onPressed: buttonPressEvent,
        child: Text(
          buttonText!,
          style: Theme.of(context).textTheme.subtitle2,
          textAlign: TextAlign.end,
        ),
      ),
    );
  }
}

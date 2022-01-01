import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppButton extends StatelessWidget {
  final double? buttonHorizontalPadding;
  final Color? buttonColor;
  final String? buttonText;
  final Color? buttonTextColor;
  final VoidCallback buttonPressEvent;

  const AppButton(
      {Key? key,
      this.buttonHorizontalPadding,
      required this.buttonPressEvent,
      this.buttonColor = Colors.blue,
      this.buttonText = "",
      this.buttonTextColor = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.height;
    double h = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: buttonHorizontalPadding!),
      width: w,
      height: h * 0.14,
      child: MaterialButton(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          elevation: 0.0,
          color: buttonColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
          onPressed: buttonPressEvent,
          child: Text(
            buttonText ?? "",
            style: GoogleFonts.roboto(
                fontSize: 18, textStyle: TextStyle(color: buttonTextColor)),
          )),
    );
  }
}

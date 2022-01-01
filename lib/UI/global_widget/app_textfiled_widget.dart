import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppTextFiled extends StatefulWidget {
  final String? hintTextTextFiled;
  final Widget? prefixIconTextFiled;
  final TextEditingController? editingController;
  final Widget? suffixIconTextFiled;
  final VoidCallback? suffixIconEvent;
  final bool? isPasswordHideShow;
  final double? scrollPadding;

  AppTextFiled({
    Key? key,
    this.scrollPadding = 0.0,
    this.prefixIconTextFiled,
    required this.editingController,
    this.suffixIconEvent,
    this.suffixIconTextFiled,
    this.hintTextTextFiled = "",
    this.isPasswordHideShow = false,
  }) : super(key: key);

  @override
  State<AppTextFiled> createState() => _AppTextFiledState();
}

class _AppTextFiledState extends State<AppTextFiled> {
  bool isIconClicked = false;

  @override
  void dispose() {
    if (kDebugMode) {
      print("Controller Dispose");
    }
    widget.editingController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return TextField(
      scrollPadding: EdgeInsets.only(bottom: h * widget.scrollPadding!),
      obscureText: widget.isPasswordHideShow! ? !isIconClicked : false,
      controller: widget.editingController,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 20),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: widget.prefixIconTextFiled,
        ),
        prefixIconConstraints: const BoxConstraints(minWidth: 0),
        hintText: widget.hintTextTextFiled,
        suffixIcon: GestureDetector(
          onTap: () async {
            if (kDebugMode) {
              print("SuffixIcon Clicked");
            }

            widget.suffixIconEvent!();
            //is Password Hide Show true then condtion is true
            if (widget.isPasswordHideShow!) {
              if (isIconClicked) {
                setState(() {
                  isIconClicked = false;
                });
              } else {
                setState(() {
                  isIconClicked = true;
                });
              }
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: widget.isPasswordHideShow!
                ? isIconClicked
                    ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset("assets/Icons/Show.svg", color: Color(0xffC6CEDD)),
                    )
                    : Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset("assets/Icons/Hide.svg",
                          color: Color(0xffC6CEDD),
              fit: BoxFit.contain,
                        ),
                    )
                : widget.suffixIconTextFiled,
          ),
        ),
        hintStyle: Theme.of(context)
            .textTheme
            .subtitle1!
            .copyWith(color: const Color(0xffC6CEDD)),
      ),
    );
  }
}

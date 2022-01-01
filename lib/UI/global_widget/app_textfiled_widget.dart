import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTextFiled extends StatefulWidget {
  final String? hintTextTextFiled;
  final Widget? prefixIconTextFiled;
  final TextEditingController? editingController;
  final Widget? suffixIconTextFiled;
  final VoidCallback? suffixIconEvent;
  final bool? isPasswordHideShow;

  AppTextFiled({
    Key? key,
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
    print("Controller Dispose");
    widget.editingController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
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
            print("SuffixIcon Clicked");
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
                    ? Icon(CupertinoIcons.eye)
                    : Icon(CupertinoIcons.eye_slash)
                : widget.suffixIconTextFiled,
          ),
        ),
        hintStyle:
            Theme.of(context).textTheme.subtitle1!.copyWith(color: Colors.grey),
      ),
    );
  }
}

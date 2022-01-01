import 'package:dailoz/UI/Screen/login_and_signup/circular_image_button.dart';
import 'package:dailoz/UI/global_widget/app_textbutton_widget.dart';
import 'package:dailoz/UI/global_widget/app_textfiled_widget.dart';
import 'package:dailoz/UI/global_widget/button_widget.dart';
import 'package:dailoz/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatelessWidget {
  TextEditingController? emailController = TextEditingController();
  TextEditingController? passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: w * 0.07),
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: h * 0.04,
                ),
                Text(
                  "Login",
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                SizedBox(
                  height: h * 0.1,
                ),
                AppTextFiled(
                  editingController: emailController,
                  hintTextTextFiled: "Enter Email ID or Username",
                  prefixIconTextFiled: const Icon(CupertinoIcons.mail),
                ),
                SizedBox(
                  height: 10,
                ),
                AppTextFiled(
                  editingController: passwordController,
                  hintTextTextFiled: "Password",
                  prefixIconTextFiled: const Icon(CupertinoIcons.lock),
                  isPasswordHideShow: true,
                  suffixIconEvent: () {
                    print("Suffix123");
                  },
                ),

                //Text Button
                AppTextButton(
                  w: w,
                  textAlignment: Alignment.topRight,
                  buttonPressEvent: () {
                    print("Forgot Button Clicked");
                  },
                  buttonText: "Forgot Password ?",
                ),
                SizedBox(
                  height: h * 0.03,
                ),

                AppButton(
                  buttonPressEvent: () {},
                  buttonColor: appPurpleColor,
                  buttonText: "Login",
                  buttonHorizontalPadding: 0.0,
                ),
                SizedBox(
                  height: h * 0.12,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(children: <Widget>[
                      Expanded(child: Divider()),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Text("or with",
                            style: Theme.of(context).textTheme.caption),
                      ),
                      Expanded(child: Divider()),
                    ]),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        CircularImageButton(
                          image: "assets/Icons/google.png",
                          circularPadding: 4,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        CircularImageButton(
                          image: "assets/Icons/Facebook.png",
                          circularPadding: 2,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: h * 0.05,
                ),
                AppTextButton(
                  buttonPressEvent: () {
                    print("Sign up Button Clicked");
                  },
                  w: w,
                  buttonText: "Don't have an account? Sign Up",
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

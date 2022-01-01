import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:dailoz/UI/Screen/login_and_signup/circular_image_button.dart';
import 'package:dailoz/UI/global_widget/app_textbutton_widget.dart';
import 'package:dailoz/UI/global_widget/app_textfiled_widget.dart';
import 'package:dailoz/UI/global_widget/button_widget.dart';
import 'package:dailoz/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'login.dart';

class SignUp extends StatelessWidget {
  TextEditingController? userNameController = TextEditingController();
  TextEditingController? emailController = TextEditingController();
  TextEditingController? passwordController = TextEditingController();

  SignUp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: w * 0.07),
            width: w,

            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

               Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                 SizedBox(
                   height: h * 0.04,
                 ),
                 Text(
                   "Sign Up",
                   style: Theme.of(context).textTheme.bodyText2,

                 ),
                 SizedBox(
                   height: h * 0.1,
                 ),
                 AppTextFiled(
                   editingController: userNameController,
                   hintTextTextFiled: "Username",
                   prefixIconTextFiled: SvgPicture.asset("assets/Icons/Profile.svg",color: Color(0xffC6CEDD)),
                   scrollPadding: 0.4,
                 ),
                 const SizedBox(
                   height: 10,
                 ),
                 AppTextFiled(
                   editingController: emailController,
                   hintTextTextFiled: "Email ID",
                   scrollPadding: 0.3,
                   prefixIconTextFiled: SvgPicture.asset("assets/Icons/Message.svg",color: Color(0xffC6CEDD)),
                 ),
                 const SizedBox(
                   height: 10,
                 ),
                 AppTextFiled(
                   editingController: passwordController,
                   hintTextTextFiled: "Password",
                   prefixIconTextFiled: SvgPicture.asset("assets/Icons/Lock.svg",color:const Color(0xffC6CEDD),),
                   isPasswordHideShow: true,
                   scrollPadding: 0.1,
                   suffixIconEvent: () {
    if(kDebugMode) {
      print("Suffix123");
    }
                   },
                 ),

                 SizedBox(
                   height: h * 0.08,
                 ),

                 AppButton(
                   buttonPressEvent: () {},
                   buttonColor: appPurpleColor,
                   buttonText: "Create",
                   buttonHorizontalPadding: 0.0,
                 ),

                   SizedBox(
                     height: h * 0.08,
                   ),
                   Column(
                     mainAxisSize: MainAxisSize.min,
                     children: [
                       Row(children: <Widget>[
                         const Expanded(child: Divider()),
                         Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 15.0),
                           child: Text("or with",
                               style: Theme.of(context).textTheme.caption),
                         ),
                         const Expanded(child: Divider()),
                       ]),
                       const SizedBox(
                         height: 20,
                       ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children:  [
                           CircularImageButton(
                             image: "assets/Icons/google.png",
                             circularPadding: 4,
                             buttonClickEvent: (){
    if(kDebugMode) {
      print("Google Button Clicked");
    }
                             },
                           ),
                           const SizedBox(
                             width: 15,
                           ),
                           CircularImageButton(
                             image: "assets/Icons/Facebook.png",
                             circularPadding: 2,
                             buttonClickEvent: (){
    if(kDebugMode) {
      print("Facebook Button clicked");
    }
                             },
                           ),
                         ],
                       ),
                       SizedBox(
                         height: h * 0.05,
                       ),
                     ],
                   ),
               ],),



                AppTextButton(

                  buttonPressEvent: () {
                    if (kDebugMode) {
                      print("Sign In Button Clicked");
                    }
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                  },
                  w: w,
                  buttonText: "Have any account? Sign In",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

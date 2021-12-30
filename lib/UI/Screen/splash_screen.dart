import 'package:dailoz/UI/Helper/app_theme.dart';
import 'package:dailoz/UI/Screen/login_and_signup/login.dart';
import 'package:dailoz/UI/global_widget/button_widget.dart';
import 'package:dailoz/constant.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.height;
    double h = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        bottom: true,
        top:true,
        child: SizedBox(
          width: w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Image widget
              Padding(
                padding: EdgeInsets.only(left: w * 0.04),
                child: Image.asset(
                  "assets/splash_illustration.png",
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Dailzo",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    SizedBox(
                      height: h * 0.03,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: w * 0.03),
                      child: Text(
                        "Plan what you will do to be more organized for today, tomorrow and beyond",
                        style: Theme.of(context).textTheme.subtitle1,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  //Login Button
                  AppButton(
                    buttonPressEvent: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> Login())),
                    buttonColor: appPurpleColor!,
                    buttonText: "Login",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  AppButton(
                    buttonPressEvent: ()=>print("Sign up"),
                    buttonColor: Colors.transparent,
                    buttonText: "Sign Up",
                    buttonTextColor:
                        currentTheme.currentTheme == ThemeMode.light
                            ? appPurpleColor
                            : Colors.white,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

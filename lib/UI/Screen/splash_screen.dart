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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //Image widget
            Padding(
              padding: EdgeInsets.only(left: w *0.04),
              child: Image.asset("assets/splash_illustration.png",fit: BoxFit.cover,),
            ),

            Column(
              children: [
                Text("Dailzo",style:Theme.of(context).textTheme.bodyText1,),
                SizedBox(height: h*0.03,),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: w*0.03),
                  child: Text("Plan what you will do to be more organized for today, tomorrow and beyond",style:Theme.of(context).textTheme.subtitle1,textAlign: TextAlign.center,),
                ),
              ],
            ),


          ],
          ),
        ),
      ),
    );
  }
}

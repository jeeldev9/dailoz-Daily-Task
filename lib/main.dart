import 'package:dailoz/UI/Helper/app_theme.dart';

import 'package:flutter/material.dart';

import 'UI/Screen/login_and_signup/login.dart';

void main() {
  // runApp(DevicePreview(builder:(context)=> MyApp()));
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  void initState() {
    super.initState();
    currentTheme.addListener(() {
      //2
      print("Theme Changed");
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme ,
      darkTheme: AppTheme.darkTheme,
      themeMode: currentTheme.currentTheme,

      home:const Login(),
    );
  }
}

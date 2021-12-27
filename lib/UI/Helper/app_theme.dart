import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

CustomTheme currentTheme = CustomTheme();

class CustomTheme with ChangeNotifier {
  static bool _isDarkTheme = true;
  ThemeMode get currentTheme => _isDarkTheme ? ThemeMode.dark : ThemeMode.light;
  void toggleTheme() {
    _isDarkTheme = !_isDarkTheme;
    notifyListeners();
  }
}


class AppTheme{
  //for dark theme
  static ThemeData get darkTheme{
    return  ThemeData(
        primaryColor: Colors.grey.shade600,
        scaffoldBackgroundColor: Colors.black,
        fontFamily: 'Montserrat',
        textTheme:darkTextTheme,
        buttonTheme: ButtonThemeData(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(90.0)),
          buttonColor: Colors.purple,
        )
    );
  }
  //for light theme
  static ThemeData get lightTheme{
    return ThemeData(
      textTheme: lightTextTheme,
      brightness: Brightness.light,
        primaryColor: Colors.purple,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Montserrat', //3
        buttonTheme: ButtonThemeData( // 4
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          buttonColor: Colors.lightGreen,
        )
    );
  }

  //for light theme text style

  static TextTheme lightTextTheme=TextTheme(
    bodyText1: GoogleFonts.roboto(
        color: Colors.black,
      fontSize: 32
    ),
    subtitle1: GoogleFonts.roboto(
      fontSize: 16,
      color: Colors.black,
    ),

  );
  //for dark theme Text Style

   static TextTheme darkTextTheme=TextTheme(

      bodyText1: GoogleFonts.roboto(
        color: Colors.white,
        fontSize: 36
      ),
     subtitle1: GoogleFonts.roboto(
       fontSize: 16,
       color: Colors.white,
     ),
  );
}
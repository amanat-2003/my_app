import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemes {
  static ThemeData lightTheme(BuildContext context) {
    return ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.lato().fontFamily,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.blueAccent.shade400),
          titleTextStyle: TextStyle(
            color: Colors.blueAccent.shade400,
          ),
          toolbarTextStyle: TextStyle(
            color: Colors.blueAccent.shade400,
          ),
          // textTheme: Theme.of(context).textTheme),

          // fontFamily: GoogleFonts.adventPro().fontFamily,
          // primaryTextTheme: GoogleFonts.lancelotTextTheme(),
        ));
  }

  static ThemeData darkTheme(BuildContext context) {
    return ThemeData(
      brightness: Brightness.dark,
    );
  }
}

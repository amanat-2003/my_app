import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyThemes {
  static ThemeData lightTheme(BuildContext context) {
    return ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.poppins().fontFamily,
        cardColor: Colors.white,
        canvasColor: Colors.lime.shade100,
        buttonColor: darkBluishColor,
        accentColor: darkBluishColor,
        indicatorColor: Colors.black,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: darkBluishColor),
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
        fontFamily: GoogleFonts.poppins().fontFamily,
        cardColor: Colors.black,
        canvasColor: darkCreamColor,
        buttonColor: lightBluishColor,
        accentColor: Colors.white,
        indicatorColor: Colors.white70,
        appBarTheme: AppBarTheme(
          color: Colors.black,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.white),
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

// Colors
  static Color creamColor = Color(0xfff5f5f5);
  static Color darkCreamColor = Vx.gray900;
  static Color darkBluishColor = Color(0xff403b58);
  static Color lightBluishColor = Vx.indigo700;
}

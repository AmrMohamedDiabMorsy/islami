// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static const Color primary = Color(0xffB7935F);
  static const Color darkprimary = Color(0xff0f1424);
  static const Color blackcolor = Color(0xff242424);
  static const yellowColor = Color(0xffFACC1D);

  ////////////////////////////////////////////////////////////

  static ThemeData LightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: primary,
        onPrimary: Colors.black54,
        secondary: blackcolor,
        onSecondary: Colors.white,
        error: Colors.red,
        onError: Colors.white,
        background: primary,
        onBackground: Colors.grey,
        surface: Colors.blueGrey,
        onSurface: Colors.white),
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(
        color: primary,
      ),
      centerTitle: true,
      elevation: 0.0,
      backgroundColor: Colors.transparent,
    ),
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.elMessiri(
        fontSize: 30,
        fontWeight: FontWeight.normal,
        color: blackcolor,
      ),
      bodySmall: GoogleFonts.elMessiri(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        // ignore: use_full_hex_values_for_flutter_colors
        color: const Color(0xfffffffff),
      ),
      bodyMedium: GoogleFonts.elMessiri(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: blackcolor,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: primary,
      selectedItemColor: blackcolor,
      unselectedItemColor: Colors.white,
    ),
  );
  ////////////////////////////////////////
  ///
  static ThemeData DarkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        primary: darkprimary,
        onPrimary: Colors.white,
        secondary: yellowColor,
        onSecondary: Colors.white,
        error: Colors.red,
        onError: Colors.white,
        background: yellowColor,
        onBackground: Colors.grey,
        surface: Colors.blueGrey,
        onSurface: Colors.white),
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      centerTitle: true,
      elevation: 0.0,
      backgroundColor: Colors.transparent,
    ),
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.elMessiri(
        fontSize: 30,
        fontWeight: FontWeight.normal,
        color: Colors.white,
      ),
      bodySmall: GoogleFonts.elMessiri(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: yellowColor,
      ),
      bodyMedium: GoogleFonts.elMessiri(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.shifting,
      backgroundColor: darkprimary,
      selectedItemColor: yellowColor,
      unselectedItemColor: Colors.white,
    ),
  );
}

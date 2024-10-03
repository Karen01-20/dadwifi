import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Colors.black;
  static const Color currentTextColor = Colors.black54;
  static const Color blackTextColor = Colors.white70;
  static const Color backgroundColorGeneral =
      Color.fromARGB(255, 230, 230, 230);

  static final ThemeData light = ThemeData.light().copyWith(
      primaryColor: primaryColor,
      // useMaterial3: true,
      colorScheme: const ColorScheme.light(primary: primaryColor),
      canvasColor: Colors.transparent,
      shadowColor: Colors.transparent,
      scaffoldBackgroundColor: backgroundColorGeneral,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actionsIconTheme: IconThemeData(color: currentTextColor, size: 30),
        iconTheme: IconThemeData(color: currentTextColor, size: 30),
        centerTitle: true,
      ),
      drawerTheme:
          const DrawerThemeData(backgroundColor: backgroundColorGeneral),
      inputDecorationTheme: const InputDecorationTheme(
          fillColor: Colors.white,
          filled: true,
          hoverColor: primaryColor,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15))),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.all(Radius.circular(15))),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.all(Radius.circular(15))),
          labelStyle: TextStyle(fontSize: 15),
          focusColor: primaryColor),
      checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateColor.resolveWith((states) => primaryColor),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
          color: AppTheme.primaryColor,
          linearMinHeight: 40,
          linearTrackColor: AppTheme.primaryColor),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: primaryColor,
          unselectedItemColor: Colors.grey,
          selectedLabelStyle:
              const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          selectedIconTheme: IconThemeData(size: 30, shadows: [
            Shadow(blurRadius: 10, color: primaryColor.withOpacity(0.8))
          ])),
      //CARD
      cardTheme: const CardTheme(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          surfaceTintColor: Colors.white,
          elevation: 0.2,
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
      //BOTONS
      //FLOATING ACTION BUTTON
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        extendedTextStyle:
            TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
        backgroundColor: primaryColor,
      ),
      iconTheme: const IconThemeData(color: currentTextColor),
      //ELEVATED BUTTON
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
        textStyle: MaterialStateProperty.resolveWith(
            (states) => const TextStyle(color: Colors.white, fontSize: 20)),
        backgroundColor:
            MaterialStateProperty.resolveWith((states) => primaryColor),
        padding: MaterialStateProperty.resolveWith(
          (states) => const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        ),
        shape: MaterialStateProperty.resolveWith(
            (states) => RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                )),
      )),
      outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
              padding: MaterialStateProperty.resolveWith((states) =>
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 10)),
              shape: MaterialStateProperty.resolveWith((states) =>
                  const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
              side: MaterialStateProperty.resolveWith((states) =>
                  const BorderSide(color: Colors.white, width: 2)))),
      dividerTheme: const DividerThemeData(color: currentTextColor));
}
